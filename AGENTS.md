# AGENTS.md

## Plugin Manager

Uses **packer.nvim** (not lazy.nvim or packer is deprecated in favor of other managers — be aware of this if migrating).
- Install/sync plugins: `:PackerInstall` / `:PackerSync`
- Compiled output: `plugin/packer_compiled.lua` (gitignored, auto-generated)

## Module Load Order

`init.lua` loads modules in this exact order (matters for dependency reasons):
1. `plugins` — packer startup, all plugin declarations
2. `variables` — leader key, plugin setups (nvim-tree, dapui, treesitter, colorscheme)
3. `mappings` — keymaps (depends on `dap-configs` module)
4. `settings` — vim options (number, tabs, clipboard, etc.)
5. `lsp` — LSP servers, mason, nvim-cmp
6. `dap-configs` — DAP adapter/config definitions (lldb, dart, flutter)

## Architecture Notes

- `lua/dap-configs.lua` **returns** the `dap` module so `mappings.lua` can call `dap.continue()` on leader-dc.
- LSP servers are configured via `vim.lsp.config()` + `vim.lsp.enable()` (Neovim 0.11+ API). `ts_ls` and `vue_ls` are set up separately after the mason loop because they need Vue/Takeover plugin integration.
- `mason-lspconfig` auto-installs servers listed in the `servers` table, but `dartls` is excluded (bundled with Dart SDK).
- DAP for C/C++ uses a **hardcoded path** to `lldb-vscode` at `/opt/homebrew/opt/llvm/bin/lldb-vscode` (Homebrew macOS location). This will break on Linux or custom LLVM installs.
- Dart/Flutter DAP paths assume SDK is at `~/development/flutter/`.

## Key Conventions

- Leader key is **space** (`vim.g.mapleader = " "`).
- Indentation: 2 spaces (`tabstop=2`, `shiftwidth=2`, `expandtab`).
- Colorscheme: `gruvbox`.
- `<Leader>p` finds files, `<Leader>h` finds files including hidden, `<Leader>l` live grep, `<Leader>L` live grep with args.
- `<Leader>d` is black-hole delete (not DAP); DAP uses `<Leader>d[t|b|c|r]`.
- vim-test mappings: `<Leader>t[f|n|s|l|v]`.

## Prerequisites

Nvim >= 0.11, NodeJS >= 22, ripgrep, Python 3. Ruby >= 3.0 and clangd are optional.

## Git workflow

- Usually is committed to main directly, without branching at all.
