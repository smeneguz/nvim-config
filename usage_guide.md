# Usage Guide for Silvio's Neovim Configuration

This guide covers the main features and keybindings of this Neovim configuration to help you get the most out of it.

## Table of Contents

- [Basic Navigation](#basic-navigation)
- [File Management](#file-management)
- [Editing](#editing)
- [Search](#search)
- [Code Intelligence](#code-intelligence)
- [Git Integration](#git-integration)
- [Debugging](#debugging)
- [Testing](#testing)
- [Other Features](#other-features)
- [Plugin Management](#plugin-management)
- [Common Commands](#common-commands)

## Basic Navigation

The configuration uses Space as the leader key.

### Window Navigation

| Keybinding | Description                |
|------------|----------------------------|
| `<C-h>`    | Move to the left window    |
| `<C-j>`    | Move to the window below   |
| `<C-k>`    | Move to the window above   |
| `<C-l>`    | Move to the right window   |

### Buffer Navigation

| Keybinding      | Description               |
|-----------------|---------------------------|
| `<A-Left>`, `<A-h>`  | Go to previous buffer     |
| `<A-Right>`, `<A-l>` | Go to next buffer         |
| `<S-A-Left>`    | Move buffer left          |
| `<S-A-Right>`   | Move buffer right         |
| `<A-x>`         | Close the current buffer  |

### Other Navigation

| Keybinding | Description                       |
|------------|-----------------------------------|
| `<C-d>`    | Scroll down (centers cursor)      |
| `<C-u>`    | Scroll up (centers cursor)        |
| `n`        | Next search result (centers view) |
| `N`        | Previous search result (centers)  |

## File Management

### NvimTree File Explorer

| Keybinding   | Description                       |
|--------------|-----------------------------------|
| `<C-n>`      | Toggle file explorer              |
| `<leader>e`  | Focus file explorer               |
| `<leader>fF` | Find current file in explorer     |

#### When in NvimTree

| Keybinding | Description               |
|------------|---------------------------|
| `a`        | Add new file/directory    |
| `d`        | Delete file/directory     |
| `r`        | Rename file/directory     |
| `R`        | Refresh the tree          |
| `y`        | Copy filename             |
| `Y`        | Copy relative path        |
| `<CR>`     | Open file                 |
| `H`        | Toggle hidden files       |
| `?`        | Show help                 |

### Telescope

| Keybinding     | Description                     |
|----------------|---------------------------------|
| `<leader>ff`   | Find files                      |
| `<leader>fg`   | Find files in git repository    |
| `<leader>fb`   | Find in current buffer          |
| `<leader>fw`   | Find text in files (grep)       |
| `<leader>fm`   | Find media files                |
| `<leader>fs`   | Search workspace symbols        |

## Editing

### Basic Operations

| Keybinding      | Description                        |
|-----------------|------------------------------------|
| `<C-s>`         | Save file                          |
| `<leader>qq`    | Quit Neovim                        |
| `<leader>y`     | Yank to system clipboard           |
| `<leader>Y`     | Yank line to system clipboard      |
| `<leader>d`     | Delete to void register            |
| `J` (visual)    | Move selected lines down           |
| `K` (visual)    | Move selected lines up             |
| `<leader>br`    | Replace word under cursor          |

### Code Comments

| Keybinding | Description                |
|------------|----------------------------|
| `gcc`      | Comment/uncomment line     |
| `gc`       | Comment/uncomment selection|
| `gbc`      | Block comment              |
| `gcO`      | Add comment line above     |
| `gco`      | Add comment line below     |

### Code Formatting

| Keybinding    | Description                      |
|---------------|----------------------------------|
| `<leader>ft`  | Format current buffer            |

## Search

Telescope provides powerful fuzzy search capabilities.

| Keybinding     | Description                     |
|----------------|---------------------------------|
| `<leader>ff`   | Find files                      |
| `<leader>fw`   | Find text in files (grep)       |
| `<leader>fb`   | Find in current buffer          |
| `<leader>fg`   | Find files in git repository    |

## Code Intelligence

### LSP Navigation

| Keybinding      | Description                      |
|-----------------|----------------------------------|
| `gd`            | Go to definition                 |
| `K`             | Show hover information           |
| `<leader>vrn`   | Rename symbol                    |
| `<leader>vrr`   | Show references                  |
| `<leader>vi`    | Show implementations             |
| `<leader>vd`    | Show diagnostics                 |
| `<leader>vD`    | Open diagnostics list            |
| `<leader>vci`   | Show incoming calls              |
| `<leader>vco`   | Show outgoing calls              |
| `]d`            | Go to next diagnostic            |
| `[d`            | Go to previous diagnostic        |
| `<C-Space>`     | Show code actions                |
| `<C-h>` (insert)| Show signature help              |

### Code Completion

The completion menu appears as you type.

| Keybinding       | Description                     |
|------------------|---------------------------------|
| `<Up>`, `<Down>` | Navigate completion options     |
| `<CR>`           | Confirm selection               |
| `<C-Space>`      | Trigger completion menu         |
| `<C-x>`          | Cancel completion               |
| `<C-u>`, `<C-d>` | Scroll docs up/down             |

## Git Integration

### Gitsigns

| Keybinding      | Description                     |
|----------------|---------------------------------|
| `]h`           | Next hunk                       |
| `[h`           | Previous hunk                   |
| `<leader>hs`   | Stage hunk                      |
| `<leader>hr`   | Reset hunk                      |
| `<leader>hS`   | Stage buffer                    |
| `<leader>hu`   | Undo stage hunk                 |
| `<leader>hR`   | Reset buffer                    |
| `<leader>hp`   | Preview hunk                    |
| `<leader>hb`   | Blame line                      |
| `<leader>gb`   | Toggle blame                    |
| `<leader>hd`   | Diff this                       |

### LazyGit

| Keybinding     | Description                     |
|----------------|---------------------------------|
| `<leader>gs`   | Open LazyGit                    |

### Diffview

| Keybinding      | Description                           |
|-----------------|---------------------------------------|
| `<leader>gd`    | Open diffview                         |
| `<leader>gh`    | Open diffview for current file history|
| `<leader>gH`    | Open diffview for branch history      |
| `<leader>gm`    | Diff HEAD with origin/main           |
| `<leader>gc`    | Close diffview                        |

## Debugging

| Keybinding      | Description                     |
|----------------|---------------------------------|
| `<leader>Dc`   | Continue debugging              |
| `<leader>Dn`   | Step over                       |
| `<leader>Dt`   | Toggle breakpoint               |
| `<leader>Dh`   | Show variable information       |

## Testing

| Keybinding      | Description                     |
|----------------|---------------------------------|
| `<leader>tr`   | Run nearest test                |
| `<leader>tR`   | Run all tests in file           |
| `<leader>td`   | Debug nearest test              |
| `<leader>to`   | Toggle test output panel        |
| `<leader>ts`   | Toggle test summary             |

## Other Features

### Undotree

| Keybinding    | Description                      |
|---------------|----------------------------------|
| `<leader>u`   | Toggle undo tree                 |

### Folding

| Keybinding    | Description                      |
|---------------|----------------------------------|
| `zR`          | Open all folds                   |
| `zM`          | Close all folds                  |
| `za`          | Toggle fold                      |
| `zc`          | Close fold                       |
| `zo`          | Open fold                        |

### Markdown Preview

| Keybinding      | Description                     |
|----------------|---------------------------------|
| `<leader>mp`   | Toggle markdown preview         |

### AI Assistance

If you've configured it:

| Keybinding           | Description                     |
|----------------------|---------------------------------|
| `<leader>lgr`        | Enhance grammar & spelling      |

## Plugin Management

The configuration uses lazy.nvim for plugin management.

| Command            | Description                     |
|--------------------|---------------------------------|
| `:Lazy`            | Open lazy.nvim dashboard        |
| `:Lazy sync`       | Sync all plugins                |
| `:Lazy update`     | Update plugins                  |
| `:Lazy clean`      | Clean unused plugins            |
| `:Lazy profile`    | Show startup profile            |

## Common Commands

### LSP Commands

| Command           | Description                      |
|-------------------|----------------------------------|
| `:LspInfo`        | Show LSP information             |
| `:Mason`          | Open Mason package manager       |
| `:LspRestart`     | Restart LSP server               |

### Treesitter

| Command                         | Description                   |
|---------------------------------|-------------------------------|
| `:TSInstall <language>`         | Install language parser       |
| `:TSBufEnable <feature>`        | Enable feature for buffer     |
| `:TSBufDisable <feature>`       | Disable feature for buffer    |
| `:TSModuleInfo`                 | Show module information       |

### Buffer Management

| Command          | Description                       |
|------------------|-----------------------------------|
| `:bd`            | Delete current buffer             |
| `:bp`            | Previous buffer                   |
| `:bn`            | Next buffer                       |
| `:ls`            | List buffers                      |
| `:b <number>`    | Switch to buffer by number        |

## Tips and Tricks

### Finding Commands

- Press `<leader>` and wait to see available commands with which-key
- Use `:Telescope commands` to search through all available commands

### Customization

- Edit `~/.config/nvim/lua/silvio/set.lua` to change settings
- Edit `~/.config/nvim/lua/silvio/remap.lua` to change keybindings
- Edit plugin configurations in `~/.config/nvim/lua/silvio/plugins/`

### Spell Checking

- Spell checking is enabled by default with camelCase support
- Add words to the dictionary with `zg`
- See spelling suggestions with `z=`

### Performance Optimization

- Use `:Lazy profile` to identify slow plugins
- Use `:LspInfo` to check language server status
- Use `:TSModuleInfo` to check treesitter parser status

## Extension

To add a new plugin:

1. Create a new file in `~/.config/nvim/lua/silvio/plugins/`
2. Use the format:
```lua
return {
    "author/plugin-name",
    dependencies = {
        -- dependencies if needed
    },
    config = function()
        -- configuration
    end,
    -- other options
}
```
3. Restart Neovim or run `:Lazy sync`