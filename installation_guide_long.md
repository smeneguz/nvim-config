# Installation Guide for Silvio's Neovim Configuration

This guide provides step-by-step instructions to install and set up this custom Neovim configuration on your computer.

## Prerequisites

Before you begin, ensure you have the following installed:

### Required

- **Neovim** (version 0.9.0 or later)
- **Git**
- **A terminal that supports true colors**
- **A Nerd Font** (for icons)

### Recommended

- **Ripgrep** (for better searching)
- **Language-specific tools** (described below)

## Installation Steps

### 1. Install Neovim and Dependencies

#### macOS
```bash
# Install Homebrew if not already installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Neovim and dependencies
brew install neovim git ripgrep
```

#### Ubuntu/Debian
```bash
# Add Neovim PPA for latest version
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update

# Install dependencies
sudo apt install neovim git ripgrep
```

#### Arch Linux
```bash
sudo pacman -S neovim git ripgrep
```

### 2. Install a Nerd Font

Nerd Fonts are required for the icons used in the configuration:

1. Download a Nerd Font from [nerdfonts.com](https://www.nerdfonts.com/)
2. Install the font according to your OS instructions
3. Configure your terminal to use the Nerd Font

### 3. Backup Existing Neovim Configuration

If you already have a Neovim configuration, back it up:

```bash
# Backup configuration directory
mv ~/.config/nvim ~/.config/nvim.bak

# Backup data directory
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

### 4. Clone the Repository

```bash
# Clone the configuration repository
git clone https://github.com/smeneguz/nvim-config.git ~/.config/nvim
```

### 5. Create Required Directories

```bash
# Create undo directory for persistent undo history
mkdir -p ~/.vim/undodir

# Create syntax highlighting queries directories
mkdir -p ~/.config/nvim/after/queries/typescript
mkdir -p ~/.config/nvim/after/queries/lua
mkdir -p ~/.config/nvim/after/queries/rust
```

### 6. Create Syntax Highlighting Files

These files enable spell checking in your code while ignoring programming keywords:

#### TypeScript:
```bash
cat > ~/.config/nvim/after/queries/typescript/highlights.scm << 'EOF'
;; extends

; Check misspelled enum declarations.
(enum_declaration
  (identifier) @spell)
; Check misspelled enum variants.
(enum_assignment
  (property_identifier) @spell)
(enum_body
  (property_identifier) @spell)

; Check misspelled interfaces.
(interface_declaration
  (type_identifier) @spell)
; Check misspelled interface properties.
(property_signature
  (property_identifier) @spell)

; Check misspelled classes.
(class_declaration
 (type_identifier) @spell)
; Check misspelled class properties.
(class_body
  (_ 
   (property_identifier) @spell)
     (#not-eq? @spell "constructor"))

; Check misspelled variables.
(lexical_declaration
  (variable_declarator
    (identifier) @spell))

; Check misspelled functions.
(function_declaration
  (identifier) @spell)
; Check misspelled function parameters
(formal_parameters
  (_ 
    (identifier) @spell))
EOF
```

#### Lua:
```bash
cat > ~/.config/nvim/after/queries/lua/highlights.scm << 'EOF'
;; extends

; Check misspelled variables.
(variable_list
  (identifier) @spell)

; Check misspelled fields.
(field
  (identifier) @spell)

; Check misspelled functions.
(function_declaration
  (identifier) @spell)
; Check misspelled functions parameters.
(function_definition
  (parameters
    (identifier) @spell))
EOF
```

#### Rust:
```bash
cat > ~/.config/nvim/after/queries/rust/highlights.scm << 'EOF'
;; extends

; Check misspelled enum name.
(enum_item
  (type_identifier) @spell)

; Check misspelled enum variants.
(enum_variant) @spell

; Check misspelled structure definitions.
(struct_item
  (type_identifier) @spell)

; Check misspelled variables.
(field_declaration
  (field_identifier) @spell)

; Check misspelled functions.
(function_item
  (identifier) @spell)
; Check misspelled function parameters.
(function_item
  (parameters
    (parameter
      (identifier) @spell)))
EOF
```

### 7. Setup Spell Dictionary

Create a custom dictionary with programming terms to avoid false positives:

```bash
# Create spell directory
mkdir -p ~/.config/nvim/spell

# Create dictionary file
cat > ~/.config/nvim/spell/en.utf-8.add << 'EOF'
neovim
nvim
LSP
config
parsers
constructor
Dev
enum
desmos
Namespace
namespaces
uri
chain
Init
debounced
Biometrics
biometrics
Url
url
Deserialize
JSON
Serializable
deserialize
popup
param
userNumber
unsynced
Struct
serializable
getter
Reinitialization
deauthenticated
broadcasted
programmatically
Enqueue
utils
testnet
tx
validator
middleware
EOF

# Generate compiled spell file
nvim -c "mkspell! ~/.config/nvim/spell/en.utf-8.add" -c "q"
```

### 8. (Optional) Setup Secrets for AI Features

If you plan to use AI features like Ollama:

```bash
# Create secrets file
touch ~/.config/nvim/.secrets
chmod 600 ~/.config/nvim/.secrets

# Edit the file and add your API keys
# Example:
# OLLAMA_URL=http://localhost:11434
# OLLAMA_USER=username
# OLLAMA_PASSWORD=password
```

### 9. Install Language-Specific Requirements

#### For JavaScript/TypeScript Development:
```bash
# Install Node.js and npm
# macOS
brew install node

# Ubuntu/Debian
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

# Install JS debug adapter for debugging
npm install -g js-debug-adapter
```

#### For Rust Development:
```bash
# Install Rust via rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

#### For Go Development:
```bash
# macOS
brew install go

# Ubuntu/Debian
sudo apt install golang
```

#### For Other Tools:
```bash
# Install lazygit (for Git integration)
# macOS
brew install lazygit

# Using Go (cross-platform)
go install github.com/jesseduffield/lazygit@latest
```

## First Launch

1. Start Neovim:
```bash
nvim
```

2. On first launch:
   - The plugin manager (lazy.nvim) will automatically install
   - All configured plugins will download and install
   - This process might take a few minutes
   - You'll see download progress indicators on the screen

3. Install language servers and tools:
   - Inside Neovim, run the command: `:Mason`
   - A window will open showing available language servers
   - Navigate to tools you need and press `i` to install them
   - Recommended: tsserver, rust-analyzer, gopls, lua_ls, bash-language-server

4. Restart Neovim after all installations are complete:
   - Exit with `:qa`
   - Start again with `nvim`

## Troubleshooting

### Missing Icons

If you see boxes or question marks instead of icons:
- Make sure you've installed a Nerd Font
- Configure your terminal to use the Nerd Font

### Plugin Installation Errors

If you encounter errors during plugin installation:
1. Check your internet connection
2. Try manual installation by running `:Lazy sync`
3. Check the error log with `:messages`

### Language Server Issues

If language servers aren't working properly:
1. Open Mason with `:Mason`
2. Check if the required servers are installed
3. Manual installation may be required for some tools
4. Verify that language tools are in your PATH

## Updating the Configuration

To update to the latest version:

```bash
cd ~/.config/nvim
git pull
```

After updating, restart Neovim and run `:Lazy sync` to update plugins.

## Uninstallation

If you want to remove this configuration:

```bash
# Remove the configuration
rm -rf ~/.config/nvim

# Remove the plugin data
rm -rf ~/.local/share/nvim

# Restore your backup (if available)
mv ~/.config/nvim.bak ~/.config/nvim
mv ~/.local/share/nvim.bak ~/.local/share/nvim
```

