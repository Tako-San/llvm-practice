#include "draw.h"
#include "mandel.h"

Byte frame[FH][FW][3] = {};

Byte clamp(Byte num, Byte min, Byte max) {
  if (num < min)
    return min;
  if (num > max)
    return max;
  return num;
}

void pupi(int x, int y, Byte r, Byte g, Byte b) {
  r = clamp(r, 0, 255);
  g = clamp(g, 0, 255);
  b = clamp(b, 0, 255);

  frame[y][x][0] = b;
  frame[y][x][1] = g;
  frame[y][x][2] = r;
}

void fillFrame() {
  for (int i = 0; i < FH; ++i)
    for (int j = 0; j < FW; ++j)
      mandel(j, i);
}

void onDisplay() {
  glClearColor(0, 0, 0, 0);
  glClear(GL_COLOR_BUFFER_BIT);

  glColor3b(0, 0, 0);
  glLineWidth(1);

  glRasterPos2f(-1, -1);

  glPixelZoom(ZoomX, ZoomY);

  glDrawPixels(FW, FH, GL_BGR_EXT, GL_UNSIGNED_BYTE, frame);

  glFinish();
  glutPostRedisplay();
  glutSwapBuffers();
}

void onReshape(int new_w, int new_h) {
  glViewport(0, 0, new_w, new_h);
  glMatrixMode(GL_PROJECTION);
  glLoadIdentity();
  gluOrtho2D(-1, 1, -1, 1);
  glMatrixMode(GL_MODELVIEW);
}

void onKeyboard(Byte key, int x, int y) {
  if (key == 27)
    exit(0);
}

void init(int *argc, char **argv) {
  glutInit(argc, argv);
  glutInitWindowSize(WIDTH, HEIGHT);
  glutInitWindowPosition(0, 0);
  glutInitDisplayMode(GLUT_RGB | GLUT_SINGLE);

  glutCreateWindow("Mandel");

  glutKeyboardFunc(onKeyboard);
  glutDisplayFunc(onDisplay);

  glutReshapeFunc(onReshape);
}