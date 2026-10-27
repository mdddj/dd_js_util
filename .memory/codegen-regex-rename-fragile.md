---
name: codegen-regex-rename-fragile
description: 重命名 freezed/json_serializable 模型类时，不要用正则批量替换，先改源码再跑 build_runner
type: gotcha
---

**Why**

`RequestParams` → `RequestConfig` 重命名时用 `perl -pi -e 's/\b_\$RequestParams/_.../g'` 批量扫所有 `.dart`，正则里的 `_\$RequestParams` 把 `_$RequestParamsFromJson` 吃成了 `_`，`with _$RequestParams` 变成 `with _`。生成文件里的 mixin 名和 fromJson 工厂名都被毁，`flutter analyze` 报 `The method '_FromJson' isn't defined`。

生成文件的符号（`_$Xxx`、`_Xxx`、`$XxxCopyWith`、`XxxPatterns`）是 freezed 按类名机械推导出来的，正则很容易漏掉命名变体或错误匹配前缀。

**How to apply**

1. 只对手写源码做替换：`lib/model/models.dart`、`lib/api/base.dart`、调用方、`test/`
2. **不要**碰 `*.freezed.dart`、`*.g.dart`
3. 跑 `dart run build_runner build --delete-conflicting-outputs`，生成文件跟着源码自动重算
4. 验证：`flutter analyze lib/` + `flutter test`

拆分要替换的符号时按长度降序，并加词边界，例如先 `RequestParamsex` → `RequestConfigEx`，再 `RequestParams` → `RequestConfig`。

**Related**

- [[request-config-naming]]
