#ifndef __DRAWER_SFML_DRAW_HH__
#define __DRAWER_SFML_DRAW_HH__

#include <cstdint>

namespace dw {

void init(std::size_t h, std::size_t w);
void putPixel(std::size_t y, std::size_t x, std::uint8_t val);
bool finished();
void flush();
void processEvent();

} // namespace dw

#endif // __DRAWER_SFML_DRAW_HH__
