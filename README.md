# codex-search-mcp

基于 OpenAI Codex 后端（`alpha/search`）的轻量、高隐私 Web 搜索与抓取 MCP 服务。

## 特性

- **零上下文泄露**：出站请求白名单序列化，彻底剔除 `input` 历史上下文及推理字段。
- **抗风控指纹对齐**：
  - 强制会话生命周期绑定，采用官方一致的 **UUIDv7** 作为 `Session_id`。
  - 模型标识强制清洗回退为官方模型（默认 `gpt-6-luna`），杜绝第三方模型标识外泄。
  - 请求头对齐官方客户端特征（`originator: codex_cli_rs` 与桌面浏览器指纹）。
- **通用 MCP 接入**：标准 stdio 协议，即插即用适配 Pi、Cursor、Claude Desktop 等客户端。

## 常用命令

```bash
just check  # 类型检查
just test   # 单元测试
just start  # 启动 MCP 服务
```
