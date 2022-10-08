#include "gol.h"

void swap(Surf *s1, Surf *s2) {
  Surf tmp = *s1;
  *s1 = *s2;
  *s2 = tmp;
}

void construct(Surf *surf, uint8_t *buf, size_t w, size_t h) {
  surf->h = h;
  surf->w = w;
  surf->buffer = buf;
}

void setVal(Surf *surf, size_t x, size_t y, uint8_t val) {
  surf->buffer[y * surf->w + x] = val;
}

uint8_t getVal(const Surf *surf, size_t x, size_t y) {
  return surf->buffer[y * surf->w + x];
}

size_t filled(uint8_t val) { return val != 0; }

size_t countNeighboursCommon(const Surf *surf, size_t x, size_t y) {
  size_t res = 0;
  res += filled(getVal(surf, x - 1, y - 1));
  res += filled(getVal(surf, x - 1, y));
  res += filled(getVal(surf, x - 1, y + 1));

  res += filled(getVal(surf, x, y - 1));
  res += filled(getVal(surf, x, y + 1));

  res += filled(getVal(surf, x + 1, y - 1));
  res += filled(getVal(surf, x + 1, y));
  res += filled(getVal(surf, x + 1, y + 1));

  return res;
}

size_t countNeighbours(const Surf *surf, size_t x, size_t y) {
  if (x > 0 && y > 0 && x < surf->w - 1 && y < surf->h - 1)
    return countNeighboursCommon(surf, x, y);

  return 0;
}

uint8_t calcState(const Surf *surf, size_t x, size_t y) {
  uint8_t dead = 0;
  uint8_t alive = 1;

  size_t neighbours = countNeighbours(surf, x, y);
  uint8_t cellState = getVal(surf, x, y);
  if (cellState == dead && neighbours == 3)
    return alive;

  if (cellState == alive && neighbours < 4 && neighbours > 1)
    return alive;

  return dead;
}

void calcSurf(Surf *next, const Surf *prev) {
  size_t h = prev->h;
  size_t w = prev->w;

  for (size_t x = 0; x < w; ++x)
    for (size_t y = 0; y < h; ++y)
      setVal(next, x, y, calcState(prev, x, y));
}
