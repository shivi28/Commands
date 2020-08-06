### To install auto completion in mac terminal 
brew install zsh
echo 'export PATH="/usr/local/opt/ncurses/bin:$PATH"' >> ~/.bash_profile
source ~/.bash_profile

### to put system on sleep
control+command+Q

### How to set alias
vim ~/.zshrc
alias k="kubectl"
source ~/.zshrc
