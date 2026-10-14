# 默认列出可用配方
default:
    @just --list

# 运行本地完整 CI 检查流水线
ci: fmt-check check test

# 代码规范与静态类型检查
check:
    bun run check

# 代码格式化校验 (CI 专用)
fmt-check:
    bun run fmt:check

# 代码自动格式化
fmt:
    bun run fmt

# 执行测试套件
test *args:
    bun test {{args}}

# 构建单文件脚本产物
build:
    bun build --target=bun index.ts --outfile dist/index.js

# 启动 MCP 服务 (stdio)
start:
    bun run index.ts
