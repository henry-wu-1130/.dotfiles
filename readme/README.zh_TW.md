# dotfiles
[繁體中文](https://github.com/henry-wu-1130/.dotfiles/readme/README.zh_TW) |
[English](https://github.com/henry-wu-1130/.dotfiles/README.md)
## 初始化

### 複製 .dotfiles 到本地 home 目錄
```
git clone https://github.com/henry-wu-1130/.dotfiles.git
```

### 安裝 HomeBrew
1. 安裝方式：https://brew.sh/index_zh-tw
2. 安裝完成，開始接著安裝 Brewfile 所列套件
    ```
    brew bundle install
    ```

### 安裝 oh-my-zsh
- 安裝方式：https://ohmyz.sh/#install

### 安裝 nvm
- 安裝方式：https://github.com/nvm-sh/nvm

### 設定 zsh 主題（選擇性安裝）
1. 在 `.zshrc` 加上這行    
    ```
    source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
    ```
2. 重新啟動終端機，照著指示安裝

### 設定 tmux
1. 進到 tmux
2. 安裝 tmux 套件
    ```
    prefix + I
    ```

### 對 .dotfiles 下檔案做 symbolic link
```
stow . 
```

## 更新 