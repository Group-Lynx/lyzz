cmake_minimum_required(VERSION 3.20)
project(lyzz)

# clangd support
set(CMAKE_EXPORT_COMPILE_COMMANDS 1)
# conan config
set(CMAKE_TOOLCHAIN_FILE conan_toolchain.cmake)
set(CMAKE_BUILD_TYPE Release)
# dependencies
set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} ${CMAKE_BINARY_DIR})

# include
include_directories(incl)

# binary
add_executable(${PROJECT_NAME} src/main.cpp)

# dep: spdlog
find_package(spdlog REQUIRED)
target_link_libraries(${PROJECT_NAME}
  PRIVATE spdlog::spdlog
)