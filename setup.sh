#!/bin/bash

echo "          _       _    __ _ _ "
echo "       __| | ___ | |_ / _(_) | ___  ___ "
echo "      / _  |/ _ \| __| |_| | |/ _ \/ __| "
echo "  _  | (_| | (_) | |_|  _| | |  __/\__ \ "
echo " (_)  \__,_|\___/ \__|_| |_|_|\___||___/ "
echo " "
echo "  _ "
echo " | |__  _   _ "
echo " |  _ \| | | | "
echo " | |_) | |_| | "
echo " |_.__/ \__, | "
echo "        |___/ "
echo "            _ _        _ "
echo "  _ __ ___ (_) | _____| | ___ __   ___ _ __ "
echo " | ,_   _ \| | |/ / _ \ |/ / ,_ \ / _ \ ,_ \ "
echo " | | | | | | |   <  __/   <| | | |  __/ |_) | "
echo " |_| |_| |_|_|_|\_\___|_|\_\_| |_|\___| .__/ "
echo "                                      |_| "
echo " "

echo "Thanks for cloning down my dotfiles!"
echo "I hope you enjoy these settings."
echo
echo "This script will walk through each group of settings (bash, vim, rspec, and git) to check if you have an existing config file. If you do, you will have the option of 'archiving' it (renaming it with the suffix '_old') or permanently deleting it. The script will then create a symlink pointing to the appropriate file in this dotfiles directory/repository."
echo
echo "So without further ado, let's get started!"
echo
echo



echo "##"
echo "## BASH"
echo "##"
echo
echo "Looking for existing .bashrc file..."
if [ -f ~/.bashrc ]
then
  echo "Found existing .bashrc file. Do you want to (a)rchive it, or (d)elete it?"
  echo "Warning! (d) will *permanently delete* this file!"
  for (( ; ; ))
  do
    read decision
    if [ "$decision" = "a" ]
    then
      echo "Archiving existing .bashrc file as .bashrc_old..."
      mv ~/.bashrc ~/.bashrc_old
      echo "Existing .bashrc file successfully archived as ~/.bashrc_old."
      break
    elif [ "$decision" = "d" ]
    then
      echo "DANGER! Are you sure you want to delete your existing .bashrc file? If so, type 'delete'."
      for (( ; ; ))
      do
        read confirm
        if [ "$confirm" = "delete" ]
        then
          echo "Deleting existing .bashrc file..."
          rm ~/.bashrc
          echo "Existing .bashrc file deleted."
          break 2
        else
          echo "You're lucky I'm nice. Now, I'll ask again: do you want to (a)rchive your existing .bashrc file, or (d)elete it?"
          break
        fi
      done
    else
      echo "That is not a valid input. Please decide whether you want to (a)rchive the existing .bashrc file or (d)elete it permanently."
    fi
  done
else
  echo "No existing .bashrc found."
fi
echo

echo "Creating symlink to dotfiles' bash settings..."
ln -s ~/dotfiles/bash/bash ~/.bashrc
echo "Symlink created successfully!"
echo
echo



echo "##"
echo "## VIM"
echo "##"
echo
echo "Looking for existing .vimrc file..."
if [ -f ~/.vimrc ]
then
  echo "Found existing .vimrc file. Do you want to (a)rchive it, or (d)elete it?"
  echo "Warning! (d) will *permanently delete* this file!"
  for (( ; ; ))
  do
    read decision
    if [ "$decision" = "a" ]
    then
      echo "Archiving existing .vimrc file as .vimrc_old..."
      mv ~/.vimrc ~/.vimrc_old
      echo "Existing .vimrc file successfully archived as ~/.vimrc_old."
      break
    elif [ "$decision" = "d" ]
    then
      echo "DANGER! Are you sure you want to delete your existing .vimrc file? If so, type 'delete'."
      for (( ; ; ))
      do
        read confirm
        if [ "$confirm" = "delete" ]
        then
          echo "Deleting existing .vimrc file..."
          rm ~/.vimrc
          echo "Existing .vimrc file deleted."
          break 2
        else
          echo "You're lucky I'm nice. Now, I'll ask again: do you want to (a)rchive your existing .vimrc file, or (d)elete it?"
          break
        fi
      done
    else
      echo "That is not a valid input. Please decide whether you want to (a)rchive the existing .vimrc file or (d)elete it permanently."
    fi
  done
else
  echo "No existing .vimrc found."
fi
echo

echo "Creating symlink to dotfiles' vim settings..."
ln -s ~/dotfiles/vim/vim ~/.vimrc
echo "Symlink created successfully!"
echo
echo



echo "##"
echo "## RSPEC"
echo "##"
echo "Looking for existing .rspec file..."
if [ -f ~/.rspec ]
then
  echo "Found existing .rspec file. Do you want to (a)rchive it, or (d)elete it?"
  echo "Warning! (d) will *permanently delete* this file!"
  for (( ; ; ))
  do
    read decision
    if [ "$decision" = "a" ]
    then
      echo "Archiving existing .rspec file as .rspec_old..."
      mv ~/.rspec ~/.rspec_old
      echo "Existing .rspec file successfully archived as ~/.rspec_old."
      break
    elif [ "$decision" = "d" ]
    then
      echo "DANGER! Are you sure you want to delete your existing .rspec file? If so, type 'delete'."
      for (( ; ; ))
      do
        read confirm
        if [ "$confirm" = "delete" ]
        then
          echo "Deleting existing .rspec file..."
          rm ~/.rspec
          echo "Existing .rspec file deleted."
          break 2
        else
          echo "You're lucky I'm nice. Now, I'll ask again: do you want to (a)rchive your existing .rspec file, or (d)elete it?"
          break
        fi
      done
    else
      echo "That is not a valid input. Please decide whether you want to (a)rchive the existing .rspec file or (d)elete it permanently."
    fi
  done
else
  echo "No existing .rspec found."
fi
echo

echo "Creating symlink to dotfiles' rspec settings..."
ln -s ~/dotfiles/rspec/rspec ~/.rspec
echo "Symlink created successfully!"
echo
echo



echo "##"
echo "## GIT"
echo "##"
echo "Looking for existing .gitconfig file..."
if [ -f ~/.gitconfig ]
then
  echo "Found existing .gitconfig file. Do you want to (a)rchive it, or (d)elete it?"
  echo "Warning! (d) will *permanently delete* this file!"
  for (( ; ; ))
  do
    read decision
    if [ "$decision" = "a" ]
    then
      echo "Archiving existing .gitconfig file as .gitconfig_old..."
      mv ~/.gitconfig ~/.gitconfig_old
      echo "Existing .gitconfig file successfully archived as ~/.gitconfig_old."
      break
    elif [ "$decision" = "d" ]
    then
      echo "DANGER! Are you sure you want to delete your existing .gitconfig file? If so, type 'delete'."
      for (( ; ; ))
      do
        read confirm
        if [ "$confirm" = "delete" ]
        then
          echo "Deleting existing .gitconfig file..."
          rm ~/.gitconfig
          echo "Existing .gitconfig file deleted."
          break 2
        else
          echo "You're lucky I'm nice. Now, I'll ask again: do you want to (a)rchive your existing .gitconfig file, or (d)elete it?"
          break
        fi
      done
    else
      echo "That is not a valid input. Please decide whether you want to (a)rchive the existing .gitconfig file or (d)elete it permanently."
    fi
  done
else
  echo "No existing .gitconfig found."
fi
echo

echo "Creating symlink to dotfiles' gitconfig settings..."
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig
echo "Symlink created successfully!"
echo
echo



##
## That's all, folks!
##
echo "Dotfiles setup complete!"
echo "Changes will take effect after restarting your terminal."
echo
