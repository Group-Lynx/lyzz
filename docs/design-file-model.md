# `FileModel` 实现设计

`FileModel` 类代表一个被打开并可以编辑的文件，它类暴露以下方法：

## Constructor/Destructor

- `(uri)`：依据给定的 `uri` 构造一个 `FileModel` 类
- ``~()`：将变更写入磁盘，并销毁使用的额外内存

## Methods

- `.save()`：将变更写入磁盘
  - `throw ~`
- `.insert_aft(row, col, buf)`：在 `pos` 位置后插入一段 `buf`
  - `throw ~`
- `.delete_seg(row, col, len)`：从 `pos` 起，向后删除 `len` 长度的内容
  - `throw ~`
- `.undo() noexcept`：撤销上一次操作
- `.redo() noexcept`：重做上一次撤销

## Getters

- `.uri() noexcept`：获得当前文件的 `uri`
- `.line_count() noexcept`：获取当前文件的行数
- `.content() noexcept`：获取当前文件的所有内容
- `.content_ln(ind) noexcept`：获取当前第 `ind` 行的内容
