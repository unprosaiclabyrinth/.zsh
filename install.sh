#!/bin/sh

sudo apt install zsh
chsh -s $(which zsh)

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo 'source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
echo 'source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh' >>~/.zshrc

echo 'HISTFILE=~/.zsh_history' >> ~/.zshrc
echo 'HISTSIZE=10000' >> ~/.zshrc
echo 'SAVEHIST=10000' >> ~/.zshrc
echo 'setopt appendhistory' >> ~/.zshrc

echo 'alias ls='ls --color=auto'' >> ~/.zshrc
echo 'alias grep='grep --color=auto'' >> ~/.zshrc
echo 'alias fgrep='fgrep --color=auto'' >> ~/.zshrc
echo 'alias egrep='egrep --color=auto'' >> ~/.zshrc

cp gitconfig ~/.gitconfig

zsh
