## Generate skeleton for a new ruby project (arg1 = project name)
rubynew () {
mkdir $1 $1/lib $1/spec

cat >$1/spec/spec_helper.rb <<EOF
require "rspec"

Dir["./lib/*.rb"].each { |file| require file }
EOF

cat >$1/spec/_spec.rb <<EOF
require "spec_helper"

describe Something do
  it "does something"
end
EOF

cat >$1/Gemfile <<EOF
source "https://rubygems.org"

gem "rspec"
EOF
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
