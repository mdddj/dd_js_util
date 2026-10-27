---
name: request-config-naming
description: 请求参数模型定名 RequestConfig，不用 RequestParams/RequestOptions，避免与 dio 重名
type: decision
---

**Why**

原 `RequestParams` 早已不是"参数"容器：字段里有 `dioStart`、`interceptorCall`、`urlParseFormat`、`responseResultCallback`、`onSendCallback`、`onReceiveProgress`、`cancelToken`、`savePath` —— 这是一次请求的完整配置 + 生命周期钩子。叫 Params 会误导调用方以为只放 query/body。

不选 `RequestOptions` / `Options` / `BaseOptions`：dio 已占用这三个名字，`lib/api/base.dart` 里到处是 `dio.BaseOptions`、`dio.Response`，同名会让读者分不清是哪套。

**How to apply**

- 类名 `RequestConfig`，短，撑得起 `typedef R = RequestConfig`
- 配套扩展 `RequestConfigEx`（原 `RequestParamsex`，小写后缀不符合 Dart 扩展命名习惯）
- 新增字段时判断标准：这次请求的配置或钩子 → 放这里；跨请求的全局设置 → 不放
- 导入处用别名消歧：`import 'package:dio/dio.dart' as dio;`

**Related**

- [[codegen-regex-rename-fragile]]
