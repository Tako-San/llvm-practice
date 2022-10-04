#include <SFML/Graphics.hpp>

#include "draw.hh"

namespace dw {

sf::RenderWindow GlobalWindow{};
sf::Event GlobalEvent{};

void init(std::size_t h, std::size_t w) {
  GlobalWindow.create(sf::VideoMode(w, h), "Game of life!");
}

void putPixel(std::size_t y, std::size_t x, std::uint8_t val) {
  auto color = val ? sf::Color::Green : sf::Color::Black;
  sf::Vector2f coords{static_cast<float>(x), static_cast<float>(y)};
  sf::Vertex vert{coords, color};

  GlobalWindow.draw(&vert, /* vertexCount */ 1, sf::Points);
}

void processEvent() {
  while (GlobalWindow.pollEvent(GlobalEvent))
    if (GlobalEvent.type == sf::Event::Closed)
      GlobalWindow.close();
}

bool finished() {
  processEvent();
  return !GlobalWindow.isOpen();
}

void flush() {
  GlobalWindow.display();
  GlobalWindow.clear(sf::Color::Black);
}

} // namespace dw
