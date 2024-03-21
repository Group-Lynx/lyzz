# 代码规范

规范检查与自动风格化由 `clang-tidy` 和 `clang-format` 完成，特别且具体的：

## 卫生

- 禁止在全局使用 `using namespace`，函数内允许。

```cpp
void func() {
    using namespace std;
    cout << "Hello, world!" << endl;
}
```

- 所有代码应归属于 `lyzz` 名字空间

```cpp
namespace lyzz {

void func_a();
void func_b();

}
```

- 所有头文件应当被 `#pragma once` 保护

```hpp
#pragma once
// ...
```

- 头文件放在 `incl/lyzz` 目录下，源文件放在 `src` 目录下

## 维护

- 所有会抛出异常的函数应当在注释中标明可能抛出的异常类型，否则应当加以 `noexcept` 修饰

```cpp
/// @throws `std::exception` 系统异常
void failable();

void robust() noexcept;
```

## 风格

- 4 格空格缩进
- 大括号不换行

## 命名

| 对象       | 命名规则         |
| ---------- | ---------------- |
| 类、自定类型 | `CamelCase`     |
| 枚举       | `CamelCase`     |
| 函数、方法  | `snake_case()`  |
| 全局常量    | `UPPER_CASE`    |
| 属性、变量  | `snake_case`    |
| 命名空间   | `snake_case`    |
| 结构体     | `CamelCase`     |
| 联合体     | `CamelCase`     |
