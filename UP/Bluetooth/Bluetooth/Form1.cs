using InTheHand.Net.Sockets;
using System.Data;
using InTheHand.Net.Bluetooth;
using InTheHand.Net;
using System.Net;
using System.Xml.Linq;
using System.Text;

namespace Bluetooth
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            InitializeControls();
            pbStatus.BackColor = Color.Red;
        }
        private void InitializeControls()
        {
            pairButton.Enabled = false;
            choosefileButton.Enabled = false;
            sendfileButton.Enabled = false;
            connectButton.Enabled = false;
        }

        BluetoothClient client;
        BluetoothDeviceInfo[] devices;
        BluetoothDeviceInfo selectedDevice;
        string selectedFilePath;

        // otwieranie urz�dzenia
        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                client = new BluetoothClient();
                updateStatus("Bluetooth initialized");
                pbStatus.BackColor = Color.Green;
                pairButton.Enabled = true;
                RefreshPairedDevices();
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error initializing Blluetooth: {ex.Message}", "error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        // Wyszukaj urz�dzenia
        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                updateStatus("Looking for devices...");
                listBox1.Items.Clear();
                devices = client.DiscoverDevices();
                scanButton.Enabled = false;

                if (devices.Length > 0)
                {
                    foreach (BluetoothDeviceInfo device in devices)
                    {
                        string item = $"Name: {device.DeviceName}, Address: {device.DeviceAddress}";
                        listBox1.Items.Add(item);
                    }
                    updateStatus($"Found {devices.Length} devices.");
                    scanButton.Enabled = true;
                }
                else
                {
                    scanButton.Enabled = true;
                    MessageBox.Show("No Bluetooth devices found.", "Information",
                        MessageBoxButtons.OK, MessageBoxIcon.Information);
                    updateStatus("No devices found.");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error scanning for devices: {ex.Message}", "Error",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
                scanButton.Enabled = true;
            }
        }
        //Przycisk "sparuj"
        private void button4_Click(object sender, EventArgs e)
        {
            if (selectedDevice == null) return;

            try
            {
                updateStatus("Attempting to pair...");

                // Sprawdzenie czy urz�dzenie nie jest ju� sparowane
                if (!selectedDevice.Authenticated)
                {
                    // Pr�ba nawi�zania po��czenia
                    var deviceAddress = selectedDevice.DeviceAddress;
                    bool paired = BluetoothSecurity.PairRequest(deviceAddress, null);

                    if (paired)
                    {
                        isPairedLabel.Text = "yes";
                        updateStatus("Device paired successfully");
                        choosefileButton.Enabled = true;
                        pairButton.Enabled = false;
                        connectButton.Enabled = true;
                    }
                    else
                    {
                        updateStatus("Pairing failed");
                        MessageBox.Show("Failed to pair with device", "Error",
                            MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    RefreshPairedDevices();
                }
                else
                {
                    updateStatus("Device is already paired");
                    choosefileButton.Enabled = true;
                    pairButton.Enabled = false;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error pairing with device: {ex.Message}", "Error",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
                updateStatus("Pairing failed");
            }
        }
        // close bluetooth device
        private void button2_Click(object sender, EventArgs e)
        {
            if (client != null)
            {
                try
                {
                    client.Close();
                    client.Dispose();
                    client = null;
                    pbStatus.BackColor = Color.Red;
                    updateStatus("Bluetooth connection closed");

                    // Powy��czaj wszystko
                    listBox1.Items.Clear();
                    nameTextBox.Clear();
                    addressTextBox.Clear();
                    isPairedLabel.Text = "no";
                    isConnectedLabel.Text = "no";
                    pairButton.Enabled = false;
                    choosefileButton.Enabled = false;
                    sendfileButton.Enabled = false;
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error closing Bluetooth connection: {ex.Message}", "Error",
                        MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        private void updateStatus(string message)
        {
            statusLabel.Text = message;
        }

        private void sendfileButton_Click(object sender, EventArgs e)
        {
            if (selectedDevice == null || string.IsNullOrEmpty(selectedFilePath))
            {
                MessageBox.Show("Wybierz urz�dzenie i plik do wys�ania.", "Ostrze�enie",
                    MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            try
            {
                updateStatus("Pr�ba wys�ania pliku...");

                if (client.Connected)
                {

                    // U�yj strumienia do przes�ania pliku
                    using (var stream = client.GetStream())
                    using (var fileStream = File.OpenRead(selectedFilePath))
                    {
                        // Wy�lij najpierw nazw� pliku
                        byte[] fileNameBytes = Encoding.UTF8.GetBytes(Path.GetFileName(selectedFilePath));
                        stream.Write(fileNameBytes, 0, fileNameBytes.Length);

                        // Wy�lij zawarto�� pliku
                        byte[] buffer = new byte[8192];
                        int bytesRead;

                        while ((bytesRead = fileStream.Read(buffer, 0, buffer.Length)) > 0)
                        {
                            stream.Write(buffer, 0, bytesRead);
                        }

                        updateStatus("Plik wys�any pomy�lnie!");
                        MessageBox.Show("Plik zosta� wys�any pomy�lnie!", "Sukces",
                            MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                else
                {
                    throw new Exception("Nie uda�o si� nawi�za� po��czenia z urz�dzeniem");
                }
            }
            catch (Exception ex)
            {
                updateStatus("B��d podczas wysy�ania pliku");
                MessageBox.Show($"B��d podczas wysy�ania pliku: {ex.Message}", "B��d",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            finally
            {
                sendfileButton.Enabled = false;
                selectedFilePath = null;
            }
        }

        private void choosefileButton_Click(object sender, EventArgs e)
        {
            using (OpenFileDialog openFileDialog = new OpenFileDialog())
            {
                openFileDialog.Filter = "All Files|*.*|Text Files|*.txt|Image Files|*.jpg;*.jpeg;*.png";
                openFileDialog.FilterIndex = 1;

                if (openFileDialog.ShowDialog() == DialogResult.OK)
                {
                    selectedFilePath = openFileDialog.FileName;
                    updateStatus($"Selected file: {Path.GetFileName(selectedFilePath)}");
                    sendfileButton.Enabled = true;
                }
            }
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (listBox1.SelectedIndex != -1)
            {
                selectedDevice = devices[listBox1.SelectedIndex];
                nameTextBox.Text = selectedDevice.DeviceName;
                addressTextBox.Text = selectedDevice.DeviceAddress.ToString();
                isPairedLabel.Text = selectedDevice.Authenticated ? "yes" : "no";
                isConnectedLabel.Text = selectedDevice.Connected ? "yes" : "no";
            }
        }

        protected override void OnFormClosing(FormClosingEventArgs e)
        {
            if (client != null)
            {
                client.Close();
                client.Dispose();
            }
            base.OnFormClosing(e);
        }
        // Metoda od�wie�aj�ca list� sparowanych urz�dze�
        private void RefreshPairedDevices()
        {
            try
            {
                listBox2.Items.Clear();

                // Pobierz wszystkie urz�dzenia i filtruj tylko sparowane
                BluetoothDeviceInfo[] allDevices = client.DiscoverDevices(255); // D�u�szy czas skanowania
                var pairedDevices = allDevices.Where(device => device.Authenticated);

                foreach (BluetoothDeviceInfo device in pairedDevices)
                {
                    string item = $"Name: {device.DeviceName}, Address: {device.DeviceAddress}";
                    listBox2.Items.Add(item);
                }
            }
            catch (Exception ex)
            {
                updateStatus($"Error refreshing paired devices: {ex.Message}");
            }
        }
        // Wyb�r urz�dzenia z listBox2 (sparowane urz�dzenia)
        private void listBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (listBox2.SelectedIndex != -1)
            {
                // Pobierz ponownie wszystkie urz�dzenia i znajd� wybrane
                BluetoothDeviceInfo[] allDevices = client.DiscoverDevices(255);
                var pairedDevices = allDevices.Where(device => device.Authenticated).ToArray();

                if (listBox2.SelectedIndex < pairedDevices.Length)
                {
                    selectedDevice = pairedDevices[listBox2.SelectedIndex];
                    UpdateDeviceInfo(selectedDevice);
                }
            }

        }
        private void UpdateDeviceInfo(BluetoothDeviceInfo device)
        {
            nameTextBox.Text = device.DeviceName;
            addressTextBox.Text = device.DeviceAddress.ToString();
            isPairedLabel.Text = device.Authenticated ? "yes" : "no";
            isConnectedLabel.Text = device.Connected ? "yes" : "no";

            pairButton.Enabled = !device.Authenticated;
            choosefileButton.Enabled = device.Authenticated;
        }

        private void button3_Click_1(object sender, EventArgs e)
        {
            if (selectedDevice == null) return;

            try
            {
                // Przekonwertuj string adresu na BluetoothAddress
                string addressStr = selectedDevice.DeviceAddress.ToString("C");  // Format bez dodatkowych znak�w

                // Utw�rz endpoint
                var endPoint = new BluetoothEndPoint(selectedDevice.DeviceAddress,
                    BluetoothService.SerialPort);

                // Pr�ba po��czenia z timeoutem
                var connectResult = false;
                var connectTask = Task.Run(() => {
                    try
                    {
                        client.Connect(endPoint);
                        connectResult = true;
                    }
                    catch
                    {
                        connectResult = false;
                    }
                });

                // Czekaj maksymalnie 5 sekund na po��czenie
                if (Task.WaitAny(new Task[] { connectTask }, 5000) == -1)
                {
                    throw new TimeoutException("Przekroczono czas oczekiwania na po��czenie");
                }

                if (connectResult && client.Connected)
                {
                    isConnectedLabel.Text = "yes";
                    updateStatus("Po��czono z urz�dzeniem");
                }
                else
                {
                    isConnectedLabel.Text = "no";
                    updateStatus("Nie uda�o si� po��czy� z urz�dzeniem");
                    throw new Exception("Nie uda�o si� nawi�za� po��czenia");
                }
            }
            catch (Exception ex)
            {
                updateStatus($"B��d po��czenia: {ex.Message}");
                MessageBox.Show($"B��d podczas ��czenia z urz�dzeniem: {ex.Message}",
                    "B��d", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        // Metoda pomocnicza do konwersji adresu
        private BluetoothAddress ParseBluetoothAddress(string address)
        {
            // Usu� wszelkie znaki specjalne i spacje
            address = new string(address.Where(c => char.IsLetterOrDigit(c)).ToArray());

            // Konwertuj string na d�ug� liczb�
            if (long.TryParse(address,
                System.Globalization.NumberStyles.HexNumber,
                System.Globalization.CultureInfo.InvariantCulture,
                out long result))
            {
                return new BluetoothAddress(result);
            }

            throw new FormatException("Nieprawid�owy format adresu Bluetooth");
        }
    }
}

