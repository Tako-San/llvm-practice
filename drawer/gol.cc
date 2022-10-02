#include <algorithm>
#include <random>

#include "gol.hh"

namespace gol {

void swap(Surf &s1, Surf &s2) {
  auto tmp = s1;
  s1 = s2;
  s2 = tmp;
}

void construct(Surf &surf, std::size_t w, std::size_t h) {
  surf.h = h;
  surf.w = w;
  surf.buffer = new std::uint8_t[h * w];
}

void destroy(Surf &surf) {
  surf.h = 0;
  surf.w = 0;
  delete[] surf.buffer;
}

void fillRand(Surf &surf) {
  std::random_device rd{};
  std::uniform_int_distribution<std::uint8_t> dist{0, 1};

  auto end = surf.h * surf.w;
  for (std::size_t i = 0; i < end; ++i)
    surf.buffer[i] = dist(rd);
}

void setVal(Surf &surf, std::size_t x, std::size_t y, std::uint8_t val) {
  surf.buffer[y * surf.w + x] = val;
}

std::uint8_t getVal(const Surf &surf, std::size_t x, std::size_t y) {
  return surf.buffer[y * surf.w + x];
}

std::size_t countNeighboursCommon(const Surf &surf, std::size_t x,
                                  std::size_t y) {
  std::size_t res = 0;
  res += std::clamp<std::size_t>(getVal(surf, x - 1, y - 1), 0, 1);
  res += std::clamp<std::size_t>(getVal(surf, x - 1, y), 0, 1);
  res += std::clamp<std::size_t>(getVal(surf, x - 1, y + 1), 0, 1);

  res += std::clamp<std::size_t>(getVal(surf, x, y - 1), 0, 1);
  res += std::clamp<std::size_t>(getVal(surf, x, y + 1), 0, 1);

  res += std::clamp<std::size_t>(getVal(surf, x + 1, y - 1), 0, 1);
  res += std::clamp<std::size_t>(getVal(surf, x + 1, y), 0, 1);
  res += std::clamp<std::size_t>(getVal(surf, x + 1, y + 1), 0, 1);

  return res;
}

std::size_t countNeighbours(const Surf &surf, std::size_t x, std::size_t y) {
  if (x > 0 && y > 0 && x < surf.w - 1 && y < surf.h - 1)
    return countNeighboursCommon(surf, x, y);

  return 0;
}

std::uint8_t calcState(const Surf &surf, std::size_t x, std::size_t y) {
  std::uint8_t dead = 0;
  std::uint8_t alive = 1;

  auto neighbours = countNeighbours(surf, x, y);
  auto cellState = getVal(surf, x, y);
  if (cellState == dead && neighbours == 3)
    return alive;

  if (cellState == alive && neighbours < 4 && neighbours > 1)
    return alive;

  return dead;
}

void calcSurf(Surf &next, const Surf &prev) {
  auto h = prev.h;
  auto w = prev.w;

  for (std::size_t x = 0; x < w; ++x)
    for (std::size_t y = 0; y < h; ++y)
      setVal(next, x, y, calcState(prev, x, y));
}

} // namespace gol