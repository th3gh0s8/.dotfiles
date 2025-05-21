# .dotfiles – Neovim Configurations (nvim branch)

Welcome to the **nvim** branch of my `.dotfiles` repository! This branch contains my Neovim configuration files, plugins, and custom scripts for a highly productive and personalized Vim experience.

## Contents

- `init.lua`  
  Main entry point for Neovim configuration.
- `lazy-lock.json`  
  Lockfile for [lazy.nvim](https://github.com/folke/lazy.nvim) plugin manager.
- `lua/th3gh0s8/init.lua`  
  Loads core Lua configuration for Neovim.
- `lua/th3gh0s8/lazy/`  
  Individual plugin configuration files for plugins managed by lazy.nvim (e.g., `lsp.lua`, `telescope.lua`, `treesitter.lua`, etc.).
- `lua/th3gh0s8/lazy_init.lua`  
  Initialization for lazy.nvim and plugin setup.
- `lua/th3gh0s8/remap.lua`  
  Custom key mappings.
- `lua/th3gh0s8/set.lua`  
  Editor options and settings.


## Features

- Modern Neovim setup using Lua for performance and flexibility
- Plugin management via [lazy.nvim](https://github.com/folke/lazy.nvim) for efficient and fast plugin loading
- Sensible defaults for editing, navigation, and code completion
- Custom keybindings for efficiency
- LSP (Language Server Protocol) integration and autocompletion
- Treesitter for advanced syntax highlighting
- File explorer, fuzzy finder, and git integration

## Getting Started

1. **Clone this branch:**
   ```sh
   git clone --branch nvim https://github.com/th3gh0s8/.dotfiles.git ~/.dotfiles-nvim
   ```

2. **Symlink config files to your Neovim folder:**
   ```sh
   ln -s ~/.dotfiles-nvim/nvim ~/.config/nvim
   ```

3. **Install [lazy.nvim](https://github.com/folke/lazy.nvim):**
   ```sh
   git clone https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/lazy/lazy.nvim
   ```
   _(See the [lazy.nvim GitHub page](https://github.com/folke/lazy.nvim) for up-to-date installation steps.)_

4. **Install plugins:**
   - Launch Neovim and plugins will be installed automatically by lazy.nvim, or run `:Lazy sync` inside Neovim.

5. **Review and customize:**
   - Tweak settings, keymaps, or plugins to match your workflow and system.

## Requirements

- Neovim (>= 0.8 recommended)
- Git
- [Optional] Node.js, Python, or other language runtimes for LSPs and external tools

## Licensing

All configuration files and scripts in this branch are released under the GNU General Public License v3.0 (GPLv3) unless otherwise specified in the file headers.  
See the `LICENSE` file for details and comply with the GPLv3 if you share or modify these files.

## Credits

Inspired by the Neovim community and various open-source dotfiles.  
See individual file headers for specific attributions.

---

Happy Vimming!  
– th3gh0s8
