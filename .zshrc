# ============================================================
# Powerlevel10k instant prompt — keep this on top
# ============================================================
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ============================================================
# Detect Homebrew path (macOS / Linux compatible)
# ============================================================
if command -v brew >/dev/null 2>&1; then
  export HOMEBREW_PREFIX="$(brew --prefix)"
else
  export HOMEBREW_PREFIX="/usr/local"
fi

# ============================================================
# Oh My Zsh
# ============================================================
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)

if [ -s "$ZSH/oh-my-zsh.sh" ]; then
  source "$ZSH/oh-my-zsh.sh"
fi

# ============================================================
# NVM (Node Version Manager)
# ============================================================
export NVM_DIR="$HOME/.nvm"

if [ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ]; then
  # Homebrew installation
  . "$HOMEBREW_PREFIX/opt/nvm/nvm.sh"
  [ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \
    . "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm"
elif [ -s "$NVM_DIR/nvm.sh" ]; then
  # Manual installation
  . "$NVM_DIR/nvm.sh"
fi

autoload -U add-zsh-hook

load-nvmrc() {
  local nvmrc_path nvmrc_node_version
  nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    nvmrc_node_version=$(nvm version "$(cat "$nvmrc_path")")
    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc

# ============================================================
# Powerlevel10k theme
# ============================================================
if [ -s "$HOMEBREW_PREFIX/share/powerlevel10k/powerlevel10k.zsh-theme" ]; then
  source "$HOMEBREW_PREFIX/share/powerlevel10k/powerlevel10k.zsh-theme"
elif [ -s "$HOME/.powerlevel10k/powerlevel10k.zsh-theme" ]; then
  source "$HOME/.powerlevel10k/powerlevel10k.zsh-theme"
fi

[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# ============================================================
# Aliases & Custom
# ============================================================
alias ll="ls -lah"
alias reload="source ~/.zshrc"
alias dots="cd ~/.dotfiles"

# ============================================================
# Environment variables
# ============================================================
export LANG="en_US.UTF-8"
export EDITOR="nvim"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.dotfiles/ai:$PATH"

# ============================================================
# Android SDK
# ============================================================
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/platform-tools"

# ============================================================
# OpenJDK 17
# ============================================================
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export JAVA_HOME=$(/usr/libexec/java_home -v17)
