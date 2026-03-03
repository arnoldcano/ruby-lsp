# ruby-lsp Plugin for Claude Code

Ruby LSP integration for Claude Code. Provides language intelligence (go-to-definition, hover, find references, and more) for Ruby files.

## Prerequisites

**Required:** Set `ENABLE_LSP_TOOL=1` so Claude Code exposes LSP tools. Without this, the LSP server starts but no tools (goToDefinition, hover, etc.) are available due to a [known race condition](https://github.com/anthropics/claude-code/issues/14803).

```bash
# Option 1: Set per-session
ENABLE_LSP_TOOL=1 claude

# Option 2: Add to your shell profile (~/.zshrc or ~/.bashrc)
export ENABLE_LSP_TOOL=1
```

**Required:** The `ruby-lsp` gem must be installed:

```bash
gem install ruby-lsp
```

## Installation

Add the marketplace and install:

```bash
/plugin marketplace add arnoldcano/ruby-lsp
/plugin install ruby-lsp@ruby-lsp
```

Or load directly from a local clone:

```bash
claude --plugin-dir /path/to/ruby-lsp
```

## How It Works

1. **Session start hook** checks that `ENABLE_LSP_TOOL` is set and `ruby-lsp` is on PATH, warning if not
2. **LSP launch** runs `ruby-lsp` as a language server via stdio

## Supported File Types

- `.rb` — Ruby files
- `.erb` — ERB templates
- `.rake` — Rake task files
- `.gemspec` — Gem specifications
- `.ru` — Rack configuration
- `Rakefile` — Rake build files

## LSP Operations

| Operation | Description |
|-----------|-------------|
| `goToDefinition` | Find where a symbol is defined |
| `findReferences` | Find all references to a symbol |
| `hover` | Get type info and documentation |
| `documentSymbol` | List all symbols in a file |
| `workspaceSymbol` | Search symbols across the project |

## License

MIT
