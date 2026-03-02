# ruby-lsp Plugin for Claude Code

Ruby LSP integration for Claude Code. Provides language intelligence (go-to-definition, hover, find references, and more) for Ruby files.

## Installation

```bash
claude plugin install /path/to/ruby-lsp
```

## How It Works

1. **Launch:** Checks if `ruby` and `ruby-lsp` are available on PATH
2. **LSP use:** Runs `ruby-lsp` as a language server via stdio

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
