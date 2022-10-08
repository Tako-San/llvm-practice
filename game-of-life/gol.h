#ifndef __DRAWER_SFML_GOL_HH__
#define __DRAWER_SFML_GOL_HH__

#include <stddef.h>
#include <stdint.h>

typedef struct {
  size_t h;
  size_t w;
  uint8_t *buffer;
} Surf;

void swap(Surf *s1, Surf *s2);

void construct(Surf *surf, uint8_t *buf, size_t w, size_t h);

void destroy(Surf *surf);

void fillRand(Surf *surf);

void calcSurf(Surf *next, const Surf *prev);

#endif // __DRAWER_SFML_GOL_HH__
