#ifndef __GAMEOFLIFE_DRAW_HH__
#define __GAMEOFLIFE_DRAW_HH__

#include <stddef.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

uint8_t getZeroOrOne(void);

void init(size_t h, size_t w);
void putPixel(size_t y, size_t x, uint8_t val);
uint8_t finished(void);
void flush(void);

#ifdef __cplusplus
}
#endif

#endif // __GAMEOFLIFE_DRAW_HH__
