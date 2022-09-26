#include <GL/glut.h>
#include <stdio.h>
#include <time.h>

#include "draw.h"

int main(int argc, char **argv) {
  init(&argc, argv);
  fillFrame();
  glutMainLoop();

  return 0;
}
