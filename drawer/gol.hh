#ifndef __DRAWER_SFML_GOL_HH__
#define __DRAWER_SFML_GOL_HH__

#include <cstdint>

namespace gol {

struct Surf {
  std::size_t h = 0;
  std::size_t w = 0;
  std::uint8_t *buffer = nullptr;
};

void swap(Surf &s1, Surf &s2);

void construct(Surf &surf, std::size_t w, std::size_t h);

void destroy(Surf &surf);

void fillRand(Surf &surf);

void calcSurf(Surf &next, const Surf &prev);

} // namespace gol

#endif // __DRAWER_SFML_GOL_HH__
