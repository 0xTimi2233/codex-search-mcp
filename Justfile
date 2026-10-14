default:
    @just --list

# 代码类型检查
check:
    bun run typecheck

# 运行测试
test:
    bun test

# 启动 MCP 服务 (stdio)
start:
    bun run index.ts
