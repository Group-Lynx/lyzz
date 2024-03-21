# 起步配置

## 需求工具链

- [CMake](https://cmake.org/) `>=3.20`
- [Conan](https://conan.io/) `>=2.0`
- [Ninja](https://ninja-build.org/) `>=1.10`
- 一个 C/C++ 编译工具链：
  - [MinGW-w64](https://www.mingw-w64.org/)
  - [Clang](https://clang.llvm.org/)
- IDE:
  - [VSCode](https://code.visualstudio.com/) + [CMake Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools) + [clangd](https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd)
  - [CLion](https://www.jetbrains.com/clion/)

## 首次配置环境

### Windows

```powershell
# 侦测 conan profile
conan profile detect --force
```

### Linux

```bash
# 侦测 conan profile
conan profile detect --force
```
