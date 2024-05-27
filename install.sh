#!/bin/sh

sudo apt install zsh -y
chsh -s $(which zsh)

#git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k
#echo 'source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc

sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone --depth=1 https://github.com/zsh-users/zsh-history-substring-search.git ~/.zsh/zsh-history-substring-search
echo 'source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc
echo 'source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh' >> ~/.zshrc
#sed -i 's/robbyrussell/avit/g' ~/.zshrc
sed -i 's/robbyrussell/bira/g' ~/.zshrc

echo >> ~/.zshrc
echo 'HISTFILE=~/.zsh_history' >> ~/.zshrc
echo 'HISTSIZE=10000' >> ~/.zshrc
echo 'SAVEHIST=10000' >> ~/.zshrc
echo 'setopt appendhistory' >> ~/.zshrc

echo >> ~/.zshrc
echo "alias ls='ls --color=auto'" >> ~/.zshrc
echo "alias grep='grep --color=auto'" >> ~/.zshrc
echo "alias fgrep='fgrep --color=auto'" >> ~/.zshrc
echo "alias egrep='egrep --color=auto'" >> ~/.zshrc

echo >> ~/.zshrc
echo 'bindkey "$terminfo[kcuu1]" history-substring-search-up' >> ~/.zshrc
echo 'bindkey "$terminfo[kcud1]" history-substring-search-down' >> ~/.zshrc

cp gitconfig ~/.gitconfig
touch ~/.zsh_history

zsh
