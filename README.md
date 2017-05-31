# de_bate

de_bate is a rails application that parses text from various sources and creates debate evidence using machine learning.

## Contents
- [Getting Started](#getting-started)
  - [Installing dependencies](#Installing-dependencies)

## Getting Started

### Installing dependencies

Instructions assume you are running Ubuntu 16.04 LTS and have git installed.

- [Ruby](https://www.ruby-lang.org/en/downloads/)
- [rbenv](https://github.com/rbenv/rbenv)

```bash
# update your system
$ sudo apt-get update && sudo apt-get upgrade
# clone rbenv into a temp directory
$ git clone https://github.com/rbenv/rbenv.git ~/.rbenv
# add to $PATH
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
# enable shims and autocompletion
$ echo 'eval "$(rbenv init -)' >> ~/.bash_profile
# install ruby-build
$ git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
```

At this point you are going to want to restart your terminal to let the PATH changes propagate.

```bash
# Install additional dependencies
$ sudo apt-get install -y libssl-dev libreadline-dev zlib1g-dev libsqlite3-dev nodejs
# install ruby 2.4.1 using rbenv
$ rbenv install 2.4.1
# install ruby headers to prevent later errors
$ sudo apt-get install ruby-dev
# install bundler
$ sudo gem install bundler
# clone the project
$ git clone https://github.com/tlutjen/de_bate.git
# move into the directory
$ cd de_bate
# run the initialization script
$ ./prelang-init

```
