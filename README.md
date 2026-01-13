# dotfiles

Personal development environment configuration management

## Quick Start

### 1. Clone this repository to home directory
```bash
cd ~
git clone https://github.com/henry-wu-1130/.dotfiles.git
```

### 2. Install Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Official documentation: https://brew.sh

### 3. Install all packages and applications
```bash
cd ~/.dotfiles
brew bundle install
```

### 4. Create symbolic links
Use GNU Stow to automatically create symbolic links for all configuration files:
```bash
cd ~/.dotfiles
stow .
```

This will automatically create the following links:
- `.zshrc` → shell configuration
- `.gitconfig` → Git configuration
- `.tmux.conf` → tmux configuration
- `.p10k.zsh` → Powerlevel10k theme configuration
- `.mackup.cfg` → Mackup configuration
- `.macos` → macOS settings script

### 5. Install Oh My Zsh
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Official documentation: https://ohmyz.sh

**Note**: After installation, when asked whether to use the default `.zshrc`, choose **No** to keep your configuration.

### 6. Configure Powerlevel10k theme
After restarting the terminal, the configuration wizard will start automatically. Follow the instructions to complete the setup.

To reconfigure:
```bash
p10k configure
```

### 7. Install Node.js (using nvm)
```bash
# nvm is already installed via Homebrew, after restarting the terminal:
nvm install --lts
nvm use --lts
```

### 8. Setup tmux plugins
```bash
# Start tmux
tmux

# Install plugins (press prefix + I)
# Default prefix is Ctrl+b
```

### 9. VSCode settings (manual)
```bash
ln -sf ~/.dotfiles/VSCode/settings.json ~/Library/Application\ Support/Code/User/settings.json
```

### 10. Restore Mackup backup (optional)
If you previously used Mackup for backup:
```bash
mackup restore
```

## Included Tools

### CLI Tools
- **git** - Version control system
- **stow** - Dotfiles management tool
- **tmux** - Terminal multiplexer
- **tree** - Directory tree display
- **fzf** - Fuzzy finder
- **neovim** - Modern Vim
- **yarn** - JavaScript package manager

### Development Environment
- **nvm** - Node.js version manager
- **chruby** - Ruby version manager
- **cocoapods** - iOS dependency manager

### Applications
- **iTerm2** - Terminal emulator
- **Visual Studio Code** - Code editor
- **Claude Code** - AI programming assistant
- **Postman** - API testing tool
- **Rectangle** - Window management tool
- **Spotify** - Music streaming

## Managing Dotfiles

### Adding new configuration files
1. Move the configuration file to `~/.dotfiles/`
2. Run `stow .` to create symbolic link
3. Commit changes to Git

### Updating Brewfile
List currently installed packages:
```bash
brew bundle dump --file=~/Brewfile.new --force
```

### Backup and Restore
Use Mackup to backup application settings:
```bash
mackup backup  # Backup
mackup restore # Restore
```

## Troubleshooting

### Stow conflicts
If conflicts occur when running `stow .`, you may need to remove existing files first:
```bash
rm ~/.zshrc  # Remove conflicting file
stow .       # Run again
```

### Powerlevel10k theme not loading
Ensure the following is in your `.zshrc`:
```bash
source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme
```

### nvm not working
Ensure nvm initialization is in your `.zshrc`:
```bash
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh"
```

## References

- [Homebrew](https://brew.sh)
- [Oh My Zsh](https://ohmyz.sh)
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [GNU Stow](https://www.gnu.org/software/stow/)
- [tmux](https://github.com/tmux/tmux)
- [nvm](https://github.com/nvm-sh/nvm)