#include <iostream>

#include "stdlib.hh"

extern "C" {

void __glang_print(int n) { std::cout << n << std::endl; }

int __glang_scan() {
  int n;
  std::cin >> n;
  if (!std::cin) {
    std::cerr << "Problem reading stdin\n";
    exit(1);
  }
  return n;
}
}
