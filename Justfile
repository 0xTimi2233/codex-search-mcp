# 默认列出可用配方
default:
    @just --list

# 代码规范与静态类型检查
check:
    bun run check

# 代码自动格式化
fmt:
    bun run fmt

# 本地执行测试套件
test *args:
    bun test {{args}}

# 启动 MCP 服务 (stdio)
start:
    bun run index.ts
