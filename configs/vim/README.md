# Setup
Create link to use vim config from repo locally (create backup of old config first)

```
mv ~/.vim ~/.vim.bak
mv ~/.vimrc ~/.vimrc.bak
ln -s $(readlink -f _.vim) ~/.vim
```
