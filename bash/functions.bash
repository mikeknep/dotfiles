## Generate skeleton for a new ruby project (arg1 = project name)
rubynew () {
mkdir $1 $1/lib $1/spec

cat >$1/lib/foo.rb <<EOF
class Foo
end
EOF

cat >$1/spec/foo_spec.rb <<EOF
require "foo"

describe Foo do
  it "does something"
end
EOF

cat >$1/Gemfile <<EOF
source "https://rubygems.org"

gem "rspec"
EOF

cd $1
bundle install
}


presentation_mode() {
  sed -i '' -E "s/size: [0-9]+/size: 18/g" ~/dotfiles/.alacritty.yml
}
normal_mode() {
  sed -i '' -E "s/size: [0-9]+/size: 12/g" ~/dotfiles/.alacritty.yml
}


bump() {
  brew bundle --file $HOME/dotfiles/Brewfile
  pyenv rehash
}


light_mode() {
  sed -i '' -E "s%colorscheme .*%colorscheme solarized%g" ~/dotfiles/vim/settings.vim
  sed -i '' -E "s%set background=.*%set background=light%g" ~/dotfiles/vim/settings.vim
  sed -i '' -E "s%colors: .+%colors: \*solarized_light%g" ~/dotfiles/.alacritty.yml
  sed -i '' -E "s%source-file .* # colors%source-file ~\\/dotfiles\\/tmux\\/light.conf # colors%g" ~/dotfiles/.tmux.conf
  tmux source ~/dotfiles/.tmux.conf
}

dark_mode() {
  sed -i '' -E "s%colorscheme .*%colorscheme gruvbox%g" ~/dotfiles/vim/settings.vim
  sed -i '' -E "s%set background=.*%set background=dark%g" ~/dotfiles/vim/settings.vim
  sed -i '' -E "s%colors: .+%colors: \*gruvbox_dark%g" ~/dotfiles/.alacritty.yml
  sed -i '' -E "s%source-file .* # colors%source-file ~\\/dotfiles\\/tmux\\/dark.conf # colors%g" ~/dotfiles/.tmux.conf
  tmux source ~/dotfiles/.tmux.conf
}
