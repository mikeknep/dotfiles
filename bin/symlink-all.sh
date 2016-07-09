declare -A configs=( ["bash"]=".bashrc" ["git"]=".gitconfig" ["lein"]=".lein/profiles" ["pry"]=".pryrc" ["rspec"]=".rspec" ["tmux"]=".tmux.conf" ["vim"]=".vimrc" )
for groupname in "${!configs[@]}"
do
  filename="${configs["$groupname"]}"
  if [ -f $VM_HOME/$filename ]
  then
    rm $VM_HOME/$filename
  fi
  ln -s $VM_HOME/dotfiles/$groupname/$groupname $VM_HOME/$filename
done
