#!/usr/bin/bash

# exit on error
set -e

# if not in project root dir, exit
if ! [ -f "CMakeLists.txt" ]; then
    echo "Run this script from the root directory of the project"
    echo "current directory: $(pwd)"
    exit 1
fi

# flags
prepare_flag=false
run_flag=false
fresh_flag=false

# set flags
for arg in "$@"; do
    case $arg in
    # prepare flag `-p` or `--prepare`
    "-p" | "--prepare")
        prepare_flag=true
        ;;
    # run flags `-r` or `--run`
    "-r" | "--run")
        run_flag=true
        ;;
    # fresh flag `-f` or `--fresh`
    "-f" | "--fresh")
        fresh_flag=true
        ;;
    esac
done

# if fresh flag is set, remove build directory
if "$fresh_flag" && [ -d "build" ]; then
    rm -rf build
fi

# ensure build directory exists
if ! [ -d "build" ]; then
    mkdir build
fi

# actual prepare commands
if "$prepare_flag" || "$fresh_flag"; then
    # conan install . --output-folder=build --build=missing
    cmake -S . -B build
fi

# actual build commands
cmake --build build

# actual run commands
if "$run_flag"; then
    printf "\n\e[34m[build.sh] Running the program...\n\n\e[0m"
    ./build/lyzz
fi
