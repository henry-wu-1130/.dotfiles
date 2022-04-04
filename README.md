# dotfiles
[繁體中文](https://github.com/henry-wu-1130/.dotfiles/readme/README.zh_TW) |
[English](https://github.com/henry-wu-1130/.dotfiles/README.md)
## Initialization

### clone .dotfiles to local home directory
```
git clone https://github.com/henry-wu-1130/.dotfiles.git
```

### install HomeBrew
1. instruction: https://brew.sh/index_zh-tw
2. after installation finished. install plugins list in Brewfile
    ```
    brew bundle install
    ```

### install oh-my-zsh
- instruction: https://ohmyz.sh/#install  

### install nvm
- instruction: https://github.com/nvm-sh/nvm

### configure zsh theme（optional）
1. add the following line to your `.zshrc`    
    ```
    source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
    ```
2. restart iterm2 and follow the instructions

### configure tmux
1. go to tmux
2. install tmux plugins by
    ```
    prefix + I
    ```

### symbolic link your .dotfiles
```
stow . 
```    