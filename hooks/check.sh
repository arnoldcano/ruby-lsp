#!/usr/bin/env bash
# Session-start check for ruby-lsp plugin.
# Non-blocking — always exits 0 so the session continues.

if [[ -z "${ENABLE_LSP_TOOL:-}" ]]; then
    echo "Warning: ENABLE_LSP_TOOL is not set."
    echo "LSP tools (goToDefinition, hover, findReferences, etc.) will not be available."
    echo "Start Claude Code with:  ENABLE_LSP_TOOL=1 claude"
    echo "Or add to ~/.zshrc:      export ENABLE_LSP_TOOL=1"
    echo "See: https://github.com/anthropics/claude-code/issues/14803"
fi

if ! command -v ruby-lsp &>/dev/null; then
    echo "Warning: ruby-lsp not found on PATH."
    echo "Install with: gem install ruby-lsp"
fi

exit 0
