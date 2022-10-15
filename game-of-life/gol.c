#include "draw.h"
#include "gol.h"

uint8_t *SURF_CUR;
uint8_t *SURF_NEXT;

void swap() {
  uint8_t *tmp = SURF_NEXT;
  SURF_NEXT = SURF_CUR;
  SURF_CUR = tmp;
}

size_t filled(uint8_t val) { return val != 0; }

size_t idx(size_t x, size_t y) { return y * W + x; }

size_t countNeighboursCommon(size_t x, size_t y) {
  size_t res = 0;
  res += filled(SURF_CUR[idx(x - 1, y - 1)]);
  res += filled(SURF_CUR[idx(x - 1, y)]);
  res += filled(SURF_CUR[idx(x - 1, y + 1)]);

  res += filled(SURF_CUR[idx(x, y - 1)]);
  res += filled(SURF_CUR[idx(x, y + 1)]);

  res += filled(SURF_CUR[idx(x + 1, y - 1)]);
  res += filled(SURF_CUR[idx(x + 1, y)]);
  res += filled(SURF_CUR[idx(x + 1, y + 1)]);

  return res;
}

size_t countNeighbours(size_t x, size_t y) {
  if ((x > 0) && (y > 0) && (x < W - 1) && (y < H - 1))
    return countNeighboursCommon(x, y);

  return 0;
}

uint8_t calcState(size_t x, size_t y) {
  uint8_t dead = 0;
  uint8_t alive = 1;

  size_t neighbours = countNeighbours(x, y);
  uint8_t cellState = SURF_CUR[idx(x, y)];
  if ((cellState == dead) && (neighbours == 3))
    return alive;

  if ((cellState == alive) && (neighbours < 4) && (neighbours > 1))
    return alive;

  return dead;
}

void calcSurf() {
  for (size_t y = 0; y < H; ++y)
    for (size_t x = 0; x < W; ++x)
      SURF_NEXT[idx(x, y)] = calcState(x, y);
}

void fillRand() {
  size_t end = H * W;
  for (size_t i = 0; i < end; ++i)
    SURF_CUR[i] = getZeroOrOne();
}

void draw() {
  for (size_t y = 0; y < H; ++y)
    for (size_t x = 0; x < W; ++x)
      putPixel(y, x, SURF_CUR[idx(x, y)]);
  flush();
}

int golMain() {
  uint8_t cur[H * W];
  SURF_CUR = cur;
  fillRand();

  uint8_t tmp[H * W];
  SURF_NEXT = tmp;

  init(H, W);
  while (!finished()) {
    calcSurf();
    swap();
    draw();
  }

  return 0;
}
