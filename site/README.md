# de_bate

de_bate is a rails application that parses text from various sources and creates debate evidence using machine learning.

## Contents
- [Dev Environment](#Dev-Environment)
  - [install VM using vagrant](#vagrant)
    - [Included Packages](#Whats-in-the-box)
    - [SSH access](#ssh-access)
    - [Installing Bundler](#installing-bundler)
    - [Starting the server](#starting-the-server)
  -

## Dev Environment

Ideal workflow: edit files on the host (windows), and changes are reflected on the VM.

### Prereqs

- [virtualbox](https://www.virtualbox.org/wiki/VirtualBox)
- [vagrant](https://www.vagrantup.com/)
- [babun](http://babun.github.io/)

If vagrant is working on your system run...

```bash
# install vbguest to automatically install VirtualBox Guest Additions
$ vagrant plugin install vagrant-vbguest
```

### Vagrant

```bash
$ git clone https://github.com/tlutjen/de_bate.git
$ cd de_bate
# run vagrant- this will take awhile!
$ vagrant up
```
Now you should have ruby 2.4.1 installed on the VM.

### What's in the box???
Included in the box.
- [ubuntu 16.04 LTS 32bt]()
- [rvm](https://rvm.io/)
  - For managing ruby installs (only need 2.4.1 which is included by default.)
- [ruby v2.4.1](https://www.ruby-lang.org/en/)
- [rails v5.1.1](http://rubyonrails.org/)
- [haml](http://haml.info/)
  - For easy to use templates.

### SSH Access

To SSH into the new box.

```bash
$ vagrant ssh
```

Try

```bash
$ ruby -v
# should output ruby v 2.4.1
```

### Installing Bundler
With a SSH session open, run the following.
```bash
$ sudo gem install bundler
```

### Starting the server

Simply run

```bash
$ rails server
```
Open a browser on the host pointed to
```bash
http://localhost:3000
```
Should see a "now riding on rails" success page.

### Manual Installation

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

From here you will have to manually install rails and haml.

See:
- [rails v5.1.1](http://rubyonrails.org/)
- [haml](http://haml.info/)
