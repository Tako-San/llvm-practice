#include <random>

#include <SFML/Graphics.hpp>

#include "draw.h"

sf::RenderWindow GlobalWindow{};
sf::Event GlobalEvent{};

std::random_device GlobalRD{};
std::uniform_int_distribution<uint8_t> GlobalDist{0, 1};

extern "C" {

uint8_t getZeroOrOne() { return GlobalDist(GlobalRD); }

void init(size_t h, size_t w) {
  GlobalWindow.create(sf::VideoMode(w, h), "Game of life!");
}

void putPixel(size_t y, size_t x, uint8_t val) {
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

uint8_t finished() {
  processEvent();
  return !GlobalWindow.isOpen();
}

void flush() {
  GlobalWindow.display();
  GlobalWindow.clear(sf::Color::Black);
}
}
