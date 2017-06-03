# de_bate

de_bate is a rails application that parses text from various sources and creates debate evidence using machine learning.

## Contents
- [Dev Environment](#Dev-Environment)
  - [Prereqs](#prereqs)
  - [install VM using vagrant](#vagrant)
    - [SSH access](#ssh-access)
    - [Installing packages](#installing-packages)
    - [Starting the Server](#starting-the-server)
  - [usage](#usage)

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

### Installing Packages

Vagrant only gets us a VM with file sharing setup between the host and the VM. You will still need to install Ruby on the VM.

With a SSH session open, run the following.
```bash
# install rbenv via apt
$ sudo apt-get install rbenv
# install ruby 2.4.1
$ rbenv install 2.4.1
# install ruby-build
$ sudo apt-get install ruby-dev
# install bundler
$ sudo gem install bundler
```

### Starting the server

```bash
# cd into project
$ cd de_bate
# bundle gems
$ bundle install
# setup the db
$ rake db:migrate
# start the rails server.
$ rails server
```

Open your host browser to localhost:3000, you should see a success page.


## Usage

Say you want to turn the VM off...

```bash
$ vagrant halt
```

Say you want to run it again...

```bash
$ vagrant up
```

If you modify the Gemfile...

```bash
# run bundler again
$ bundle install
```

If you modify the db migration files...

```bash
$ rake db:migrate
```
