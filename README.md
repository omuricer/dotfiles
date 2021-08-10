# Dotfiles for Ubuntu on WSL2

## 0. Install dependencies

### 0-1. install from apt repository
```bash
# Qiita Ubuntu で Git の最新を使う
# https://qiita.com/cointoss1973/items/1c01837e65b937fc0761
sudo add-apt-repository ppa:git-core/ppa

sudo apt update
sudo apt upgrade

sudo apt install -y git vim fish cargo
```

### 0-2. install fisher
```bash
# https://github.com/jorgebucaran/fisher
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
```

### 0-3. install from fisher repository
```fish
# execute on fish (not bash)
fisher install oh-my-fish/theme-bobthefish
```

### 0-4. install from cargo repository
```fish
cargo install exa
```


## 1. Setup dotfiles

### 1-1. git clone
```fish
cd
mkdir git
cd git
git clone https://github.com/omuricer/dotfiles.git
```

### 1-2. create symbolic link to .ssh
```fish
sudo rm -rd ~/.ssh
ln -s ~/.ssh /mnt/c/path/to/googledrive/no/reino/directory
```

### 1-3. create symbolic link to dotfiles
```fish
ln -s ~/git/dotfiles/.config/fish/config.fish ~/.config/fish/config.fish
ln -s ~/git/dotfiles/.config/fish/functions/bobthefish_colors.fish ~/.config/fish/functions/bobthefish_colors.fish

ln -s ~/git/dotfiles/.vim ~/.vim
ln -s ~/git/dotfiles/.vimrc ~/.vimrc
```

### 1-4. comment out 
```fish
vim ~/.config/fish/functions/fish_prompt.fish
# 1141行目らへん
# __bobthefish_prompt_rubies
# をコメントアウト（これのせいでターミナルが遅い）
```