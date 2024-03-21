#include "lyzz/dummy.h"
#include <iostream>
#include <spdlog/spdlog.h>

int main() {
    std::cout << "Hello, World!" << std::endl;
    spdlog::info("dummy marker: {}", lyzz::get_one());

    return 0;
}
