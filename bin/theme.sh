#! /usr/bin/env bash

case $1 in
    light|dark) ;;
    *) echo "Can only toggle between light and dark, not '$1'"; exit -1 ;;
esac

mode=$1

## Alacritty
sd '^colors: .*' "colors: *${mode}" ~/dotfiles/.alacritty.yml

## Tmux
tmux source-file ~/dotfiles/tmux/${mode}.tmux

## Delta
sd '^features = .*' "features = ${mode}" ~/dotfiles/.gitconfig

## Vim
echo $mode > ~/.theme
