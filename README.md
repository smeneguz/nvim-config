# Silvio's Neovim Configuration

A modern, modular, and thoughtfully structured Neovim configuration focusing on TypeScript, JavaScript, Rust, and Go development.

## Requirements 

- Neovim >= 0.9.0
- Git
- A C compiler (GCC, Clang)
- (Optional) [Nerd Font](https://www.nerdfonts.com/) for icons
- (Optional) ripgrep for improved search


## Installation

```bash
git clone https://github.com/smeneguz/nvim-config.git ~/.config/nvim
cd ~/.config/nvim
./install.sh
nvim
```

### Backup Your Current Configuration

```bash
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

### Clone This Repository

```bash
git clone https://github.com/smeneguz/nvim-config.git ~/.config/nvim
```

### Create Required Directories

```bash
mkdir -p ~/.vim/undodir
```

### Start Neovim

```bash
nvim
```

On first start, the configuration will:
1. Install lazy.nvim (plugin manager)
2. Download and install all plugins
3. Set up language servers
4. Configure editor settings

## Core Keybindings

### General

- `<Space>` - Leader key
- `<C-s>` - Save file
- `<Leader>qq` - Quit Neovim

### Navigation

- `<C-h/j/k/l>` - Navigate between windows
- `<C-n>` - Toggle file explorer
- `<Leader>e` - Focus file explorer
- `<A-Left/Right>` - Navigate between buffers
- `<A-x>` - Close current buffer

### Search

- `<Leader>ff` - Find files
- `<Leader>fg` - Find files in git repo
- `<Leader>fb` - Find in current buffer
- `<Leader>fw` - Find text in files

### Code

- `<Leader>ft` - Format code
- `gd` - Go to definition
- `K` - Show hover information
- `<Leader>vrn` - Rename symbol
- `<Leader>vd` - Show diagnostics
- `<Leader>vD` - Open diagnostics list
- `<C-Space>` - Show code actions

### Git

- `<Leader>gs` - Open LazyGit
- `<Leader>gd` - Open Diffview
- `<Leader>gb` - Toggle git blame
- `<Leader>hs` - Stage hunk
- `<Leader>hr` - Reset hunk
- `<Leader>hp` - Preview hunk

### Debugging

- `<Leader>Dc` - Continue debugging
- `<Leader>Dt` - Toggle breakpoint
- `<Leader>Dn` - Step over
- `<Leader>Dh` - Hover variable

### Testing

- `<Leader>tr` - Run nearest test
- `<Leader>tR` - Run all tests in file
- `<Leader>td` - Debug nearest test
- `<Leader>ts` - Toggle test summary

## Language Server Protocol

This configuration supports many languages out of the box, including:

- TypeScript/JavaScript
- Rust
- Go
- Lua
- HTML/CSS
- JSON/YAML/TOML
- Bash
- Protocol Buffers

## Plugins

This configuration includes many carefully selected plugins for a great development experience:

- File Explorer: [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- Fuzzy Finder: [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- Syntax Highlighting: [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Git Integration: [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim), [vim-fugitive](https://github.com/tpope/vim-fugitive), [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)
- Completion: [nvim-cmp](https://github.com/hrsh7th/nvim-cmp), [codeium.nvim](https://github.com/Exafunction/codeium.nvim)
- LSP: [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
- Debugging: [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- Testing: [neotest](https://github.com/nvim-neotest/neotest)
- UI: [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim), [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)

## Customization

This configuration is designed to be modular and easy to customize:

- Editor settings: `lua/silvio/set.lua`
- Key mappings: `lua/silvio/remap.lua`
- Plugin configurations: `lua/silvio/plugins/*.lua`

## Credits

This configuration is inspired by and incorporates elements from various Neovim configurations, particularly from the Neovim community. Special thanks to:

- [ThePrimeagen](https://github.com/ThePrimeagen) for Neovim insights
- [TJ DeVries](https://github.com/tjdevries) for plugin development
- [VonHeikemen](https://github.com/VonHeikemen) for LSP Zero
- [Christian Chiarulli](https://github.com/ChristianChiarulli) for NvChad concepts

## License

MIT
