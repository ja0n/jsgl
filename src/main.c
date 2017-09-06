#include <stdlib.h>
#include <stdio.h>
#include <GLFW/glfw3.h>
#include <GL/gl.h>
#include <v8.h>

int main(int argc, char* argv[]) {
  if (!glfwInit()) {

  }

  GLFWwindow *window = glfwCreateWindow(500, 400, "plutaria", NULL, NULL);
  glfwMakeContextCurrent(window);
  glfwSwapInterval(1);

  while (!glfwWindowShouldClose(window)) {
    glClear(GL_COLOR_BUFFER_BIT);
    glClearColor(1, 1, 1, 1);
    glfwSwapBuffers(window);
    glfwPollEvents();
  }

  glfwTerminate();

  return 0;
}
