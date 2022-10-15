#ifndef __GAME_OF_LIFE_GOL_HH__
#define __GAME_OF_LIFE_GOL_HH__

#include <stddef.h>
#include <stdint.h>

#define H 360
#define W 640

#ifdef __cplusplus
extern "C" {
#endif

extern uint8_t *SURF_CUR;
extern uint8_t *SURF_NEXT;

void swap(void);

size_t filled(uint8_t val);
size_t idx(size_t x, size_t y);

size_t countNeighboursCommon(size_t x, size_t y);
size_t countNeighbours(size_t x, size_t y);
uint8_t calcState(size_t x, size_t y);
void calcSurf(void);

void fillRand(void);
void draw(void);

int golMain(void);

#ifdef __cplusplus
}
#endif

#endif // __GAME_OF_LIFE_GOL_HH__
