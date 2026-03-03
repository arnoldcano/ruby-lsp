#!/usr/bin/env bash
set -euo pipefail

if ! command -v ruby-lsp &>/dev/null; then
    echo "Error: ruby-lsp not found. Install with: gem install ruby-lsp" >&2
    exit 1
fi

exec ruby-lsp
