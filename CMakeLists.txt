cmake_minimum_required(VERSION 3.20)
project(lyzz)

# clangd support
set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

# source
file(GLOB SOURCES "src/*.cpp")

# include
include_directories(incl)

# binary
add_executable(${PROJECT_NAME} ${SOURCES})

# dependencies
include(FetchContent)

# dep: spdlog
FetchContent_Declare(spdlog
  GIT_REPOSITORY https://github.com/gabime/spdlog
  GIT_TAG v1.x
)
FetchContent_MakeAvailable(spdlog)
target_link_libraries(${PROJECT_NAME}
  PRIVATE spdlog::spdlog
)