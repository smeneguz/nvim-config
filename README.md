# Silvio's Neovim Configuration

A modern, modular, and thoughtfully structured Neovim configuration focusing on TypeScript, JavaScript, Rust, and Go development.

## Prerequisites

- Neovim >= 0.9.0
- Git
- A C compiler (GCC, Clang)
- (Optional) [Nerd Font](https://www.nerdfonts.com/) for icons
- (Optional) ripgrep for improved search

## Installation

### Automatic Installation

```bash
# Backup existing configuration
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

# Clone the repository
git clone https://github.com/yourusername/nvim-config.git ~/.config/nvim

# Create required directories
mkdir -p ~/.vim/undodir