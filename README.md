# dotfiles

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

### restore Mackup
```
mackup restore
```

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

### manual symbolic VSCode setting.json to your .dotfiles

```
ln -s ~/.dotfiles/VSCode/settings.json ~/Library/Application\ Support/Code/User/settings.json
```