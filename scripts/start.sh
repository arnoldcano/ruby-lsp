#!/usr/bin/env bash
# Launcher script for ruby-lsp

set -euo pipefail

if ! command -v ruby &>/dev/null; then
    echo "Error: ruby not found on PATH." >&2
    exit 1
fi

if ! command -v ruby-lsp &>/dev/null; then
    echo "Error: ruby-lsp gem not found. Install it with: gem install ruby-lsp" >&2
    exit 1
fi

exec ruby-lsp
