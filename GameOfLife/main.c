#include "draw.h"
#include "gol.h"

void fillRand(Surf *surf) {
  size_t end = surf->h * surf->w;
  for (size_t i = 0; i < end; ++i)
    surf->buffer[i] = getZeroOrOne();
}

void draw(Surf surf) {
  for (size_t y = 0; y < surf.h; ++y)
    for (size_t x = 0; x < surf.w; ++x)
      putPixel(y, x, surf.buffer[y * surf.w + x]);
  flush();
}

int main() {
  size_t h = 360;
  size_t w = 640;

  Surf surf;
  uint8_t buf1[h * w];
  construct(&surf, buf1, w, h);
  fillRand(&surf);

  Surf tmp;
  uint8_t buf2[h * w];
  construct(&tmp, buf2, w, h);

  init(h, w);
  while (!finished()) {
    calcSurf(&tmp, &surf);
    swap(&tmp, &surf);
    draw(surf);
  }

  return 0;
}
