dotfiles
========

My dotfiles. Setup like shown by DT here: https://www.youtube.com/watch?v=tBoLDpTWVOM

Submodules / vim/zsh-plugins: https://gist.github.com/manasthakur/d4dc9a610884c60d944a4dd97f0b3560#installing-plugins

Based on zsh

```
sudp apt install zsh
sudo apt install fzf
sudo apt install tldr
sudo apt install exa
# if you like it 
sudo apt install kitty 
```

```
# oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

