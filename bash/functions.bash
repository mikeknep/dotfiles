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



## Jump to current repo on GitHub
gh() {
  local giturl=$(grep -o -m 1 'git@.*' .git/config)
  giturl=${giturl/git\@github\.com\:/https://github.com/}
  open $giturl
}



## Navigate up multiple directories
up () {
  if [ $# -eq 0 ]
  then
    cd ..
  else
    for i in $(seq $1)
    do
      cd ..
    done
  fi
}
