import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import numpy as np


# Dane
czas = np.arange(0, 241)

# ftv170
ftv170_50 = [7.844, 2.2668, 1.7625, 1.599, 1.4567, 1.3669, 1.2846, 1.2125, 1.1641, 1.1161, 1.0582, 1.0286, 0.9893, 0.9645, 0.9483, 0.9086, 0.8871, 0.8559, 0.8191, 0.7964, 0.7726, 0.762, 0.7523, 0.7386, 0.7218, 0.7037, 0.6858, 0.6707, 0.6637, 0.6517, 0.6393, 0.6346, 0.6315, 0.6254, 0.6185, 0.6034, 0.5928, 0.5831, 0.5725, 0.5614, 0.5536, 0.5487, 0.547, 0.5385, 0.5353, 0.5325, 0.5281, 0.5252, 0.5184, 0.5146, 0.5117, 0.5065, 0.501, 0.4975, 0.4928, 0.4902, 0.4873, 0.4833, 0.4789, 0.4789, 0.4762, 0.4736, 0.4715, 0.4695, 0.466, 0.4648, 0.4632, 0.4572, 0.4496, 0.4377, 0.4363, 0.4338, 0.4302, 0.4254, 0.4235, 0.4193, 0.4163, 0.4142, 0.4125, 0.4094, 0.4094, 0.4077, 0.4073, 0.4035, 0.4028, 0.4022, 0.4019, 0.3996, 0.3988, 0.3967, 0.393, 0.3927, 0.3911, 0.3911, 0.3894, 0.389, 0.3886, 0.3857, 0.3837, 0.3837, 0.3828, 0.382, 0.3766, 0.3766, 0.3737, 0.3737, 0.3713, 0.369, 0.3679, 0.367, 0.3667, 0.3667, 0.3627, 0.3607, 0.3583, 0.3575, 0.3545, 0.3522, 0.3522, 0.3472, 0.3467, 0.3453, 0.3445, 0.3432, 0.3432, 0.3429, 0.3419, 0.3418, 0.3416, 0.3416, 0.3416, 0.3401, 0.3399, 0.3399, 0.3394, 0.3393, 0.3385, 0.3375, 0.3375, 0.3364, 0.3346, 0.3346, 0.334, 0.334, 0.3334, 0.3315, 0.3314, 0.3294, 0.3293, 0.3285, 0.3282, 0.3247, 0.3247, 0.3236, 0.3236, 0.3236, 0.3236, 0.3231, 0.3226, 0.3226, 0.321, 0.321, 0.321, 0.3189, 0.3182, 0.3172, 0.3144, 0.3144, 0.3144, 0.3144, 0.3136, 0.3131, 0.3131, 0.3131, 0.3131, 0.3116, 0.3116, 0.3111, 0.3106, 0.3106, 0.3106]

ftv170_100 = [7.8612, 2.1314, 1.6254, 1.3768, 1.2459, 1.1305, 1.0524, 0.9831, 0.9248, 0.8842, 0.8355, 0.8052, 0.7808, 0.7549, 0.7282, 0.7095, 0.696, 0.6827, 0.6774, 0.6662, 0.6508, 0.6427, 0.6306, 0.6204, 0.6108, 0.6073, 0.5947, 0.5797, 0.5763, 0.5677, 0.5577, 0.5458, 0.5286, 0.5188, 0.512, 0.5064, 0.503, 0.5019, 0.497, 0.4888, 0.4811, 0.4792, 0.4757, 0.4714, 0.4689, 0.4679, 0.4642, 0.4593, 0.4559, 0.4517, 0.4473, 0.4437, 0.4436, 0.4421, 0.4382, 0.4382, 0.4355, 0.4325, 0.4323, 0.4313, 0.4297, 0.4265, 0.4246, 0.4211, 0.4173, 0.4141, 0.411, 0.409, 0.4057, 0.4025, 0.402, 0.4009, 0.3999, 0.3987, 0.3951, 0.3929, 0.3912, 0.3884, 0.3866, 0.3841, 0.382, 0.3781, 0.3781, 0.3763, 0.3763, 0.373, 0.3729, 0.372, 0.372, 0.3677, 0.3636, 0.3623, 0.3604, 0.3595, 0.3555, 0.3545, 0.3542, 0.3539, 0.3528, 0.3522, 0.3517, 0.351, 0.3491, 0.3477, 0.3477, 0.3469, 0.3468, 0.3467, 0.3467, 0.3466, 0.3457, 0.3453, 0.3441, 0.3432, 0.3425, 0.341, 0.34, 0.34, 0.3388, 0.3354, 0.3354, 0.3309, 0.3307, 0.3304, 0.3304, 0.3265, 0.3257, 0.3238, 0.3226, 0.3212, 0.3212, 0.3203, 0.3203, 0.3192, 0.3192, 0.3192, 0.3179, 0.3175, 0.3166, 0.3166, 0.3166, 0.3166, 0.3159, 0.3159, 0.3159, 0.3149, 0.3134, 0.3134, 0.3134, 0.3131, 0.3109, 0.307, 0.307, 0.3066, 0.3058, 0.3032, 0.303, 0.2984, 0.2958, 0.2958, 0.2958, 0.2942, 0.2932, 0.2932, 0.2932, 0.2921, 0.2911, 0.2911, 0.2906, 0.2893, 0.2893, 0.2872, 0.2872, 0.286, 0.2856, 0.2856, 0.2856, 0.2839, 0.2832, 0.2832]

ftv170_200 = [7.7641, 1.9802, 1.4966, 1.2826, 1.1661, 1.0687, 0.9983, 0.9456, 0.8768, 0.8393, 0.8195, 0.7944, 0.7658, 0.7435, 0.7274, 0.7041, 0.6951, 0.6757, 0.6584, 0.6444, 0.6319, 0.6213, 0.6044, 0.5883, 0.5805, 0.5701, 0.5576, 0.5552, 0.551, 0.5457, 0.5432, 0.5363, 0.5265, 0.5177, 0.5164, 0.5094, 0.5065, 0.5016, 0.4985, 0.4926, 0.4879, 0.4868, 0.4816, 0.476, 0.4691, 0.463, 0.4569, 0.4518, 0.4476, 0.4429, 0.4384, 0.4363, 0.4348, 0.4321, 0.431, 0.431, 0.4293, 0.4276, 0.4268, 0.4257, 0.4212, 0.4206, 0.418, 0.418, 0.4159, 0.4138, 0.4123, 0.4072, 0.4018, 0.3998, 0.3979, 0.3965, 0.3955, 0.3938, 0.3909, 0.3856, 0.3856, 0.3827, 0.3827, 0.382, 0.382, 0.3805, 0.3802, 0.3771, 0.3763, 0.3736, 0.3728, 0.3704, 0.3696, 0.3678, 0.3673, 0.3649, 0.3625, 0.3625, 0.36, 0.3592, 0.3592, 0.3584, 0.3584, 0.3568, 0.3568, 0.356, 0.356, 0.356, 0.356, 0.356, 0.356, 0.356, 0.356, 0.356, 0.356, 0.356, 0.356, 0.356, 0.356, 0.3535, 0.3535, 0.3535, 0.3535, 0.3535, 0.3535, 0.3532, 0.3532, 0.3527, 0.3525, 0.3519, 0.3519, 0.3516, 0.3471, 0.346, 0.3453, 0.3453, 0.3453, 0.3453, 0.3443, 0.3443, 0.3443, 0.3443, 0.3437, 0.3437, 0.3437, 0.3437, 0.3409, 0.3409, 0.3409, 0.3403, 0.3403, 0.3403, 0.3403, 0.3376, 0.3365, 0.3365, 0.3365, 0.3365, 0.3365, 0.3365, 0.3365, 0.3365, 0.336, 0.3351, 0.3351, 0.3327, 0.3323, 0.3304, 0.3304, 0.3284, 0.3281, 0.3278, 0.3272, 0.3254, 0.3254, 0.323, 0.322, 0.322, 0.322, 0.322, 0.322, 0.322, 0.322, 0.322, 0.322]

# ftv47
ftv47_50 = [2.2733, 0.175, 0.1278, 0.112, 0.1043, 0.0944, 0.0935, 0.0921, 0.0904, 0.085, 0.0792, 0.078, 0.078, 0.078, 0.078, 0.0778, 0.0753, 0.0753, 0.0753, 0.0735, 0.0735, 0.0734, 0.0734, 0.0725, 0.0725, 0.0725, 0.0725, 0.0725, 0.0725, 0.0712, 0.0712, 0.0712, 0.0712, 0.0712, 0.0712, 0.0712, 0.0677, 0.0664, 0.0664, 0.0664, 0.0664, 0.0664, 0.0664, 0.0664, 0.0664, 0.0664, 0.0664, 0.0609, 0.0609, 0.0602, 0.0602, 0.0578, 0.0573, 0.0573, 0.0573, 0.0573, 0.0573, 0.0573, 0.0555, 0.0554, 0.0546]

ftv47_100 = [2.3284, 0.142, 0.1077, 0.0922, 0.0823, 0.0768, 0.0768, 0.0768, 0.0768, 0.0768, 0.0768, 0.0746, 0.0746, 0.0746, 0.0737, 0.0718, 0.0718, 0.0718, 0.0718, 0.0708, 0.0704, 0.0704, 0.0704, 0.0687, 0.0687, 0.0687, 0.0678, 0.0672, 0.0663, 0.0663, 0.0663, 0.0663, 0.0649, 0.0645, 0.0645, 0.0645, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577, 0.0577]

ftv47_200 = [2.3417, 0.1828, 0.1088, 0.1077, 0.0968, 0.0903, 0.0876, 0.0788, 0.0788, 0.0788, 0.078, 0.078, 0.078, 0.078, 0.078, 0.078, 0.078, 0.078, 0.077, 0.074, 0.071, 0.0704, 0.0704, 0.0704, 0.0704, 0.0704, 0.0704, 0.0704, 0.0704, 0.0704, 0.0704, 0.0677, 0.0677, 0.0677, 0.0677, 0.0677, 0.0677, 0.0677, 0.0677, 0.0649, 0.0649, 0.0649, 0.0649, 0.0649, 0.0649, 0.0635, 0.0635, 0.0635, 0.0635, 0.0635, 0.0635, 0.0635, 0.0635, 0.0635, 0.0635, 0.0635, 0.0635, 0.0635, 0.0635, 0.0635, 0.0635]

rbg403_50 = [1.9604, 0.8905, 0.7095, 0.6179, 0.5695, 0.5312, 0.4923, 0.4613, 0.4414, 0.4196, 0.4041, 0.3889, 0.3776, 0.3656, 0.3564, 0.3459, 0.3335, 0.3258, 0.3166, 0.3062, 0.2967, 0.2918, 0.2852, 0.2781, 0.2712, 0.266, 0.2611, 0.256, 0.2524, 0.2488, 0.2457, 0.2413, 0.2366, 0.2317, 0.2271, 0.2226, 0.2178, 0.2136, 0.2105, 0.208, 0.2038, 0.2013, 0.1981, 0.1959, 0.1929, 0.1905, 0.1875, 0.1849, 0.1825, 0.1824, 0.1801, 0.178, 0.1748, 0.1705, 0.1691, 0.1676, 0.1657, 0.1632, 0.1616, 0.1609, 0.1596, 0.1578, 0.1561, 0.1551, 0.1533, 0.1522, 0.1503, 0.1484, 0.1471, 0.1464, 0.146, 0.1454, 0.1445, 0.1439, 0.1413, 0.1409, 0.14, 0.1391, 0.1376, 0.1369, 0.136, 0.1353, 0.1331, 0.1327, 0.1323, 0.1318, 0.1309, 0.1297, 0.1287, 0.1275, 0.1265, 0.1254, 0.1252, 0.1236, 0.1228, 0.1217, 0.1208, 0.1202, 0.1174, 0.1161, 0.1157, 0.115, 0.1143, 0.1131, 0.1125, 0.1117, 0.1111, 0.1106, 0.1088, 0.1085, 0.1075, 0.1075, 0.1071, 0.1062, 0.1041, 0.1021, 0.1011, 0.1006, 0.1005, 0.1, 0.0998, 0.0998, 0.0996, 0.0985, 0.0983, 0.0981, 0.0979, 0.0969, 0.0963, 0.0963, 0.0959, 0.0955, 0.0954, 0.0951, 0.0951, 0.0946, 0.0944, 0.0938, 0.0935, 0.0933, 0.0929, 0.0928, 0.0923, 0.0912, 0.091, 0.0903, 0.0898, 0.0896, 0.0894, 0.0894, 0.0892, 0.0891, 0.0886, 0.0877, 0.0873, 0.0869, 0.0861, 0.0854, 0.0854, 0.0851, 0.0849, 0.0843, 0.0843, 0.0842, 0.0838, 0.083, 0.0825, 0.0818, 0.0811, 0.0794, 0.0787, 0.0777, 0.0776, 0.0766, 0.0765, 0.0761, 0.0757, 0.0757, 0.0756, 0.0746, 0.0746, 0.0742, 0.0742, 0.0742, 0.0737, 0.0732, 0.0729, 0.0726, 0.0723, 0.0719, 0.071, 0.0708, 0.0707, 0.0701, 0.0701, 0.07, 0.0692, 0.069, 0.0688, 0.0682, 0.0679, 0.0672, 0.0671, 0.0665, 0.0664, 0.0663, 0.0657, 0.0656, 0.0651, 0.0651, 0.065, 0.0645, 0.0643, 0.0643, 0.0641, 0.063, 0.0621, 0.0618, 0.0611, 0.061, 0.0609, 0.0608, 0.0599, 0.0599, 0.0599, 0.0597, 0.0597, 0.0591, 0.0591, 0.059, 0.0587, 0.0587, 0.0586, 0.0581, 0.0579, 0.0576, 0.0572, 0.0568, 0.0568, 0.0568, 0.0567]
rbg403_100 = [1.9629, 0.889, 0.6883, 0.5891, 0.524, 0.4757, 0.4307, 0.4022, 0.3747, 0.3508, 0.3307, 0.3138, 0.3004, 0.2885, 0.2773, 0.2677, 0.2616, 0.2536, 0.2458, 0.2387, 0.2314, 0.2235, 0.2166, 0.2088, 0.2049, 0.1993, 0.1964, 0.1921, 0.1868, 0.1815, 0.1773, 0.1731, 0.1686, 0.1663, 0.1628, 0.1595, 0.1556, 0.1531, 0.1503, 0.1471, 0.1446, 0.1425, 0.1398, 0.1381, 0.1356, 0.134, 0.1326, 0.1308, 0.1286, 0.1258, 0.1241, 0.1222, 0.1208, 0.1189, 0.1173, 0.1162, 0.1155, 0.1144, 0.1136, 0.1122, 0.1112, 0.1096, 0.1095, 0.1076, 0.1058, 0.1041, 0.1018, 0.0998, 0.0984, 0.097, 0.0959, 0.0946, 0.0939, 0.0929, 0.0921, 0.0918, 0.0905, 0.0881, 0.0865, 0.0852, 0.0844, 0.0836, 0.0825, 0.0805, 0.0796, 0.0785, 0.0775, 0.0774, 0.0753, 0.074, 0.0735, 0.0733, 0.0714, 0.0706, 0.069, 0.0687, 0.0677, 0.0669, 0.066, 0.0658, 0.0654, 0.0647, 0.0643, 0.0639, 0.063, 0.063, 0.0622, 0.0618, 0.0605, 0.0601, 0.0593, 0.0577, 0.0576, 0.0567, 0.0566, 0.0563, 0.0557, 0.0555, 0.0544, 0.054, 0.0531, 0.0528, 0.0528, 0.0528, 0.0526, 0.0521, 0.052, 0.0518, 0.0511, 0.0507, 0.0502, 0.0499, 0.0484, 0.0483, 0.0478, 0.0469, 0.0466, 0.0464, 0.046, 0.0459, 0.0454, 0.0452, 0.0449, 0.0447, 0.0446, 0.0445, 0.0442, 0.0432, 0.0432, 0.0428, 0.042, 0.0413, 0.0404, 0.0399, 0.0395, 0.0383, 0.0378, 0.0378, 0.0375, 0.0374, 0.0369, 0.0369, 0.0369, 0.0366, 0.0358, 0.0352, 0.0351, 0.0351, 0.0351, 0.0351, 0.035, 0.0347, 0.0347, 0.0342, 0.0338, 0.0334, 0.033, 0.033, 0.0328, 0.0327, 0.0325, 0.0323, 0.0318, 0.0311, 0.0305, 0.0305, 0.0305, 0.0304, 0.0304, 0.0304, 0.0304, 0.0301, 0.0301, 0.0299, 0.0297, 0.029, 0.0288, 0.0284, 0.0284, 0.0283, 0.0281, 0.028, 0.0279, 0.0279, 0.0279, 0.0277, 0.0277, 0.0276, 0.0276, 0.0276, 0.0274, 0.0265, 0.0265, 0.0263, 0.0263, 0.0263, 0.0263, 0.0263, 0.0262, 0.0255, 0.0255, 0.025, 0.025, 0.0247, 0.0247, 0.0245, 0.0244, 0.0243, 0.0243, 0.0241, 0.0237, 0.0235, 0.0235, 0.0232, 0.0232, 0.0232, 0.0232, 0.0232, 0.0229, 0.0228, 0.0224]
rbg403_200 = [1.9803, 0.8851, 0.6845, 0.5645, 0.4962, 0.4455, 0.4123, 0.38, 0.3572, 0.3301, 0.3095, 0.2946, 0.2762, 0.265, 0.2527, 0.2388, 0.2272, 0.2196, 0.2118, 0.2044, 0.199, 0.1893, 0.1832, 0.177, 0.172, 0.1658, 0.1613, 0.1587, 0.1544, 0.1501, 0.1476, 0.1437, 0.1416, 0.1383, 0.1354, 0.1326, 0.1286, 0.1278, 0.1255, 0.1219, 0.1206, 0.1186, 0.1148, 0.1133, 0.1123, 0.1094, 0.1065, 0.1045, 0.1036, 0.1024, 0.1016, 0.0996, 0.0984, 0.097, 0.0951, 0.093, 0.0899, 0.0867, 0.0843, 0.0829, 0.0818, 0.08, 0.0791, 0.0775, 0.0768, 0.0758, 0.075, 0.0737, 0.0727, 0.0716, 0.0705, 0.0694, 0.069, 0.0685, 0.0665, 0.0652, 0.0639, 0.0638, 0.0634, 0.0621, 0.0616, 0.0609, 0.0598, 0.0587, 0.057, 0.0566, 0.0557, 0.0552, 0.0542, 0.0541, 0.0539, 0.0533, 0.0526, 0.0517, 0.0514, 0.0509, 0.0508, 0.0501, 0.0486, 0.0469, 0.0462, 0.0459, 0.0454, 0.0454, 0.0452, 0.0441, 0.0431, 0.043, 0.0427, 0.0422, 0.0417, 0.0413, 0.0409, 0.0405, 0.0398, 0.0398, 0.0396, 0.0394, 0.0389, 0.0385, 0.0383, 0.0376, 0.0374, 0.0371, 0.0371, 0.0368, 0.0367, 0.0366, 0.0364, 0.0361, 0.0358, 0.0356, 0.0356, 0.0356, 0.0352, 0.0347, 0.0338, 0.0334, 0.0334, 0.0331, 0.0331, 0.0327, 0.0325, 0.0322, 0.0317, 0.0316, 0.0315, 0.0314, 0.0311, 0.0306, 0.0299, 0.0293, 0.0293, 0.0293, 0.0293, 0.0292, 0.029, 0.0289, 0.0289, 0.0286, 0.0286, 0.0286, 0.0282, 0.0279, 0.0279, 0.0279, 0.0276, 0.0275, 0.0275, 0.027, 0.026, 0.026, 0.0257, 0.0255, 0.0255, 0.0255, 0.0255, 0.0255, 0.0254, 0.0254, 0.0252, 0.0251, 0.0251, 0.0251, 0.0247, 0.0247, 0.0247, 0.0247, 0.0244, 0.0243, 0.0237, 0.0237, 0.0233, 0.0233, 0.0233, 0.0231, 0.0231, 0.023, 0.023, 0.0228, 0.0226, 0.0224, 0.0223, 0.0222, 0.0221, 0.0221, 0.0221, 0.0221, 0.0221, 0.0217, 0.0217, 0.0213, 0.0213, 0.0213, 0.0213, 0.0208, 0.0205, 0.0205, 0.0205, 0.0205, 0.0205, 0.0198, 0.0198, 0.0198, 0.0198, 0.0198, 0.0198, 0.0198, 0.0198, 0.0197, 0.0197, 0.0196, 0.0196, 0.0196, 0.0196, 0.0192, 0.0192, 0.0192, 0.0192, 0.0192, 0.0192]

# Tworzenie wykresu
plt.figure(figsize=(15, 8))

# ftv170
plt.plot(czas[:len(ftv170_50)], ftv170_50, label='ftv170 pop: 50', linestyle='--', color='blue')
plt.plot(czas[:len(ftv170_100)], ftv170_100, label='ftv170 pop: 100', linestyle='--', color='cyan')
plt.plot(czas[:len(ftv170_200)], ftv170_200, label='ftv170 pop: 200', linestyle='--', color='navy')

# ftv47
plt.plot(czas[:len(ftv47_50)], ftv47_50, label='ftv47 pop: 50', linestyle='-.', color='green')
plt.plot(czas[:len(ftv47_100)], ftv47_100, label='ftv47 pop: 100', linestyle='-.', color='lime')
plt.plot(czas[:len(ftv47_200)], ftv47_200, label='ftv47 pop: 200', linestyle='-.', color='darkgreen')

# rbg403
plt.plot(czas[:len(rbg403_50)], rbg403_50, label='rbg403 pop: 50', linestyle=':', color='red')
plt.plot(czas[:len(rbg403_100)], rbg403_100, label='rbg403 pop: 100', linestyle=':', color='orange')
plt.plot(czas[:len(rbg403_200)], rbg403_200, label='rbg403 pop: 200', linestyle=':', color='darkred')

# Oznaczenia osi i tytuł
plt.xlabel('Czas [s]')
plt.ylabel('Błąd [%]')
plt.title('Wykres błędu w funkcji czasu dla różnych instancji i populacji')
plt.legend()
plt.grid(True)

# Wyświetlenie wykresu
plt.savefig('error_plot.png')
