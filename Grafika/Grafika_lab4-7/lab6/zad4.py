#!/usr/bin/env python3
import sys
import os
from pathlib import Path

from glfw.GLFW import *

from OpenGL.GL import *
from OpenGL.GLU import *

from PIL import Image


viewer = [0.0, 0.0, 10.0]

theta = 0.0
pix2angle = 1.0

left_mouse_button_pressed = 0
mouse_x_pos_old = 0
delta_x = 0

current_texture = 0  # indeks aktualnej tekstury
textures = []
show_wall = True

mat_ambient = [1.0, 1.0, 1.0, 1.0]
mat_diffuse = [1.0, 1.0, 1.0, 1.0]
mat_specular = [1.0, 1.0, 1.0, 1.0]
mat_shininess = 20.0

light_ambient = [0.5, 0.0, 0.35, 1.0]
light_diffuse = [0.2, 0.5, 0.1, 1.0]
light_specular = [1.0, 1.0, 0.5, 1.0]
light_position = [0.0, 0.0, 10.0, 1.0]
light_position2 = [0.0, 0.0, -10.0, 1.0]
light_ambient2 = [0.5, 0.0, 0.35, 1.0]
light_diffuse2 = [0.2, 0.5, 0.1, 1.0]
light_specular2 = [1.0, 1.0, 0.5, 1.0]

att_constant = 1.0
att_linear = 0.05
att_quadratic = 0.001


def startup():
    update_viewport(None, 400, 400)
    glClearColor(0.0, 0.0, 0.0, 1.0)
    glEnable(GL_DEPTH_TEST)

    glMaterialfv(GL_FRONT, GL_AMBIENT, mat_ambient)
    glMaterialfv(GL_FRONT, GL_DIFFUSE, mat_diffuse)
    glMaterialfv(GL_FRONT, GL_SPECULAR, mat_specular)
    glMaterialf(GL_FRONT, GL_SHININESS, mat_shininess)

    glLightfv(GL_LIGHT0, GL_AMBIENT, light_ambient)
    glLightfv(GL_LIGHT0, GL_DIFFUSE, light_diffuse)
    glLightfv(GL_LIGHT0, GL_SPECULAR, light_specular)
    glLightfv(GL_LIGHT0, GL_POSITION, light_position)
    glLightfv(GL_LIGHT1, GL_AMBIENT, light_ambient2)
    glLightfv(GL_LIGHT1, GL_DIFFUSE, light_diffuse2)
    glLightfv(GL_LIGHT1, GL_SPECULAR, light_specular2)
    glLightfv(GL_LIGHT1, GL_POSITION, light_position2)

    glLightf(GL_LIGHT0, GL_CONSTANT_ATTENUATION, att_constant)
    glLightf(GL_LIGHT0, GL_LINEAR_ATTENUATION, att_linear)
    glLightf(GL_LIGHT0, GL_QUADRATIC_ATTENUATION, att_quadratic)
    glLightf(GL_LIGHT1, GL_CONSTANT_ATTENUATION, att_constant)
    glLightf(GL_LIGHT1, GL_LINEAR_ATTENUATION, att_linear)
    glLightf(GL_LIGHT1, GL_QUADRATIC_ATTENUATION, att_quadratic)

    glShadeModel(GL_SMOOTH)
    glEnable(GL_LIGHTING)
    glEnable(GL_LIGHT0)
    glEnable(GL_LIGHT1)

    glEnable(GL_TEXTURE_2D)
    glEnable(GL_CULL_FACE)
    glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_MODULATE)
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR)
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR)

    #image = Image.open("tekstury/katze_inde_pralke.tga")

    # wczytujemy wszystkie pliki z folderu tekstury do texture_files
    texture_dir = Path("tekstury")
    texture_files = [f for f in texture_dir.iterdir() if
                     f.is_file() and f.suffix.lower() in ('.tga')]

    global textures
    textures = []

    for texture_file in texture_files:
        try:
            image = Image.open(texture_file)
            texture_data = image.tobytes("raw", "RGB", 0, -1)
            textures.append((image.size[0], image.size[1], texture_data))

            print(f"Załadowano teksturę: {texture_file}")

        except Exception as e:
            print(f"Błąd podczas ładowania tekstury {texture_file}: {e}")

        # załaduj pierwszą teksturkę
        if textures:
            glTexImage2D(
                GL_TEXTURE_2D, 0, 3, textures[0][0], textures[0][1], 0,
                GL_RGB, GL_UNSIGNED_BYTE, textures[0][2]
            )
        else:
            print("Nie znaleziono żadnych tekstur w folderze 'tekstury'!")


def shutdown():
    pass


def render(time):
    global theta

    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)
    glLoadIdentity()

    gluLookAt(viewer[0], viewer[1], viewer[2],
              0.0, 0.0, 0.0, 0.0, 1.0, 0.0)

    if left_mouse_button_pressed:
        theta += delta_x * pix2angle

    glRotatef(theta, 0.0, 1.0, 0.0)


    glBegin(GL_TRIANGLES)

    # Trójkąt uno
    glTexCoord2f(0.0, 0.0)
    glVertex3f(-5.0, -5.0, 0.0)
    glTexCoord2f(1.0, 1.0)
    glVertex3f(5.0, 5.0, 0.0)
    glTexCoord2f(1.0, 0.0)
    glVertex3f(5.0, -5.0, 0.0)

    # Trójkąt dos
    glTexCoord2f(0.0, 0.0)
    glVertex3f(-5.0, -5.0, 0.0)
    glTexCoord2f(0.0, 1.0)
    glVertex3f(-5.0, 5.0, 0.0)
    glTexCoord2f(1.0, 1.0)
    glVertex3f(5.0, 5.0, 0.0)

    if show_wall:
        # Trójkąt tres
        glTexCoord2f(0.0, 1.0)
        glVertex3f(5.0, -5.0, 0.0)
        glTexCoord2f(1.0, 1.0)
        glVertex3f(5.0, 5.0, 0.0)
        glTexCoord2f(0.5, 0.5)
        glVertex3f(0.0, 0.0, 5.0)

        # Trójkąt quatro
        glTexCoord2f(1.0, 0.0)
        glVertex3f(-5.0, 5.0, 0.0)
        glTexCoord2f(0.0, 0.0)
        glVertex3f(-5.0, -5.0, 0.0)
        glTexCoord2f(0.5, 0.5)
        glVertex3f(0.0, 0.0, 5.0)

        # Trójkąt cinco
        glTexCoord2f(1.0, 1.0)
        glVertex3f(5.0, 5.0, 0.0)
        glTexCoord2f(1.0, 0.0)
        glVertex3f(-5.0, 5.0, 0.0)
        glTexCoord2f(0.5, 0.5)
        glVertex3f(0.0, 0.0, 5.0)

        # Trójkąt seis
        glTexCoord2f(0.0, 0.0)
        glVertex3f(-5.0, -5.0, 0.0)
        glTexCoord2f(0.0, 1.0)
        glVertex3f(5.0, -5.0, 0.0)
        glTexCoord2f(0.5, 0.5)
        glVertex3f(0.0, 0.0, 5.0)

    glEnd()

    glFlush()


def update_viewport(window, width, height):
    global pix2angle
    pix2angle = 360.0 / width

    glMatrixMode(GL_PROJECTION)
    glLoadIdentity()

    gluPerspective(70, 1.0, 0.1, 300.0)

    if width <= height:
        glViewport(0, int((height - width) / 2), width, width)
    else:
        glViewport(int((width - height) / 2), 0, height, height)

    glMatrixMode(GL_MODELVIEW)
    glLoadIdentity()


def keyboard_key_callback(window, key, scancode, action, mods):
    global current_texture
    global show_wall

    if key == GLFW_KEY_ESCAPE and action == GLFW_PRESS:
        glfwSetWindowShouldClose(window, GLFW_TRUE)
    elif key == GLFW_KEY_SPACE and action == GLFW_PRESS:
        show_wall = not show_wall
    elif key == GLFW_KEY_T and action == GLFW_PRESS:
        if textures:
            current_texture = (current_texture + 1) % len(textures)
            texture = textures[current_texture]
            glTexImage2D(
                GL_TEXTURE_2D, 0, 3, texture[0], texture[1], 0,
                GL_RGB, GL_UNSIGNED_BYTE, texture[2]
            )
            print(f"Przełączono na teksturę {current_texture + 1} z {len(textures)}")


def mouse_motion_callback(window, x_pos, y_pos):
    global delta_x
    global mouse_x_pos_old

    delta_x = x_pos - mouse_x_pos_old
    mouse_x_pos_old = x_pos


def mouse_button_callback(window, button, action, mods):
    global left_mouse_button_pressed

    if button == GLFW_MOUSE_BUTTON_LEFT and action == GLFW_PRESS:
        left_mouse_button_pressed = 1
    else:
        left_mouse_button_pressed = 0


def main():
    if not glfwInit():
        sys.exit(-1)

    window = glfwCreateWindow(400, 400, __file__, None, None)
    if not window:
        glfwTerminate()
        sys.exit(-1)

    glfwMakeContextCurrent(window)
    glfwSetFramebufferSizeCallback(window, update_viewport)
    glfwSetKeyCallback(window, keyboard_key_callback)
    glfwSetCursorPosCallback(window, mouse_motion_callback)
    glfwSetMouseButtonCallback(window, mouse_button_callback)
    glfwSwapInterval(1)

    startup()
    while not glfwWindowShouldClose(window):
        render(glfwGetTime())
        glfwSwapBuffers(window)
        glfwPollEvents()
    shutdown()

    glfwTerminate()


if __name__ == '__main__':
    main()