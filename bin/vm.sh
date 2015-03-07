declare -A configs=( ["bash"]=".bashrc" ["vim"]=".vimrc" ["rspec"]=".rspec" ["git"]=".gitconfig" ["tmux"]=".tmux.conf" )
for groupname in "${!configs[@]}"
do
  filename="${configs["$groupname"]}"
  if [ -f $VM_HOME/$filename ]
  then
    rm $VM_HOME/$filename
  fi
  ln -s $VM_HOME/dotfiles/$groupname/$groupname $VM_HOME/$filename
done

git clone https://github.com/gmarik/Vundle.vim.git $VM_HOME/.vim/bundle/Vundle.vim
su vagrant -c 'sudo vim -u ~/dotfiles/vim/bundles.vim +PluginInstall +qall -e -s'
