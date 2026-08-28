# Modern Neovim Configuration with Lua & LSP

This directory contains a modern Neovim configuration built with Lua, managed by `lazy.nvim`, and powered by native LSP support for C, C++, Rust, and Python.

## Directory Structure

```text
new-lua/
├── init.sh             # Installation and backup script
├── init.lua            # Main entry point and basic settings
└── lua
    └── plugins/
        ├── lsp.lua     # LSP configuration (clangd, rust-analyzer, pyright) and nvim-cmp
        ├── ui.lua      # Theme (tokyonight), statusline, telescope, and neo-tree
        ├── keymaps.lua # Custom key mappings (including leader key ';')
        └── extras.lua  # Formatters, indentation guides, and commenting tools
```

# Quick Start

1. Run the initialization script to sync configurations and back up any existing setup:

```
./init.sh
```

2.  Ensure your system toolchains are installed

```
# MacOS

brew install llvm rustup ripgrep git curl
rustup component add rust-analyzer
```

```
# Ubuntu/Debian

sudo apt update && sudo apt install -y build-essential clangd ripgrep git curl
curl --proto '=https' --tlsv1.2 -sSf [https://sh.rustup.rs](https://sh.rustup.rs) | sh
source "$HOME/.cargo/env"
rustup component add rust-analyzer
```

3. Launch Neovim:

```
nvim
```

> Note: On the first launch, lazy.nvim will automatically bootstrap and download all required plugins.

## How to Extend and Add New Plugins

To add a new plugin or customize existing features in the future, follow these steps:

1. Create a new `.lua` file under the `lua/plugins/` directory
(e.g., `lua/plugins/my_plugin.lua`), or add your configurations into an existing file like `extras.lua`.

2. Follow the standard `lazy.nvim` plugin specification format. For example:

```
return {
  {
    "author/plugin-name.nvim",
    config = function()
      require("plugin-name").setup()
    end,
  },
}
```

3. Re-run `./init.sh` to sync the new files to your `~/.config/nvim/` directory, then restart Neovim or run `:Lazy sync`.

# Supporting the 12 Languages of Sherpa-Onnx

This setup supports all 12 programming languages used across the sherpa-onnx repository. You can manage and install their respective Language Servers inside Neovim using Mason (:Mason):

| Language | LSP Server Name | Installation & Configuration Guide |
| :--- | :--- | :--- |
| C++ / C | `clangd` | Install via `brew install llvm` or `:Mason`. Requires `compile_commands.json` (Generate via `cmake -B build -S . -DCMAKE_EXPORT_COMPILE_COMMANDS=ON` and symlink it to the root). |
| Python | `pyright` | Install via `:Mason` (`:MasonInstall pyright`). Automatically detects local `.venv`. |
| Rust | `rust_analyzer` | Installed via `rustup component add rust-analyzer`. Seamlessly integrates with `Cargo.toml`. |
| Go | `gopls` | Install via `:Mason`. Zero-config for standard Go modules. |
| C# | `csharp_ls` | Install via `:Mason`. Works out-of-the-box with `.sln` or `.csproj`. |
| Java | `jdtls` | Install via `:Mason`. Requires a local JDK installed on your system. |
| Kotlin | `kotlin_language_server` | Install via `:Mason`. Perfect for Gradle/Maven Kotlin projects. |
| JavaScript / TS| `ts_ls` | Install via `:Mason`. Built-in support for frontend and Node.js components. |
| Swift | `sourcekit-lsp` | Native support via Xcode/Swift toolchain on macOS. |
| Dart | `dartls` | Bundled with Flutter / Dart SDK. |
| Object Pascal | `pasls` | Community Pascal Language Server (not tried yet). |

Packages are installed inside
```
ls ~/.local/share/nvim/mason/

bin             packages        registries      share           staging         system_packages
```

# Essential LSP & Navigation Keymaps

Master these shortcuts to supercharge your code navigation:

- `gd:` Go to definition (jump straight to the implementation or declaration).
- `Ctrl + o`: Jump back to your previous cursor location after using gd.
- `K`: Hover to display documentation, type signatures, and docstrings.
- `;rn`: Rename symbol globally across all files in your project workspace.
- `;ca`: Trigger code actions (quick fixes, automatic imports).
- `[d` / `]d`: Jump to the previous or next diagnostic error/warning.
- `;r`: Reload current file (:e!).
- `;w`: Save current file (:w).
- `<C-n>`: Toggle file tree explorer (neo-tree).
- `jk`: Fast escape from insert mode back to normal mode.


