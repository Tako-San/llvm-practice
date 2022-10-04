#include "draw.hh"
#include "gol.hh"

void draw(gol::Surf surf) {
  for (std::size_t y = 0; y < surf.h; ++y)
    for (std::size_t x = 0; x < surf.w; ++x)
      dw::putPixel(y, x, surf.buffer[y * surf.w + x]);
  dw::flush();
}

int main() {
  std::size_t h = 360;
  std::size_t w = 640;

  gol::Surf surf;
  gol::construct(surf, w, h);
  gol::fillRand(surf);

  gol::Surf tmp;
  gol::construct(tmp, w, h);

  dw::init(h, w);
  while (!dw::finished()) {
    gol::calcSurf(tmp, surf);
    gol::swap(tmp, surf);
    draw(surf);
  }

  gol::destroy(surf);
  gol::destroy(tmp);
  return 0;
}
