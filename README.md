Quick Start
----

> 示例：`http://cr.revoluette.com/sample?aaa&qs=123`

1. 增加 `xxxx.lua` 脚本处理http请求
2. 修改 `handler.toc`，支持正则表达式匹配URL
3. pull到github之后，访问 `http://cr.revoluette.com/sync` ，同步变更

handler支持功能可以参考`sample.lua`。 

# `handler.toc`

`handler.toc` 是一个目录文件，当请求到达时，每次从上到下一次进行匹配，第一个匹配成功生效。`handler.toc`每一行表示一个http handler，格式为：

| 第一列  | 第二列 | 第三列  |
|------|-----|------|
| 请求方法 | URL | 处理脚本 |

URL支持正则表达式，在 [这里](https://regex101.com/) 选择golang测试正则表达式。

# Lua API

## `get_request_method()`

http请求方法，**小写**。

## `get_request_path()`

http请求路径，例如：`http://cr.revoluette.com/abc?hhh&name=xyz`，`get_request_path()` 返回 `/abc`。

## `get_request_header(key)`

http请求头。

## `get_request_query(key)`

http URL query string部分，通过KV形式查找。例如：`http://cr.revoluette.com/abc?hhh&name=xyz`，`get_request_query('name')` 返回 `xyz`。

## `get_request_raw_query()`

http URL query string部分字符串。例如：`http://cr.revoluette.com/abc?hhh&name=xyz`，`get_request_raw_query()` 返回 `hhh&name=xyz`。

## `set_response_header(key, value)`

设置http响应头。

## `set_response_status(code)`

设置http相应状态码。

## `set_response_body(resp)`

设置http相应body。

## `sleep(microsecond)`

等待microsecond毫秒的时间，用于增加相应时长，可以配合 `math.random` 实现随机响应。

`1000000` = 1秒
