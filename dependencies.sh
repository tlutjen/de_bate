# The output of all these installation steps is noisy. With this utility
# the progress report is nice and concise.
function install {
    echo installing $1
    shift
    apt-get -y install "$@" >/dev/null 2>&1
}

echo updating package information
apt-add-repository -y ppa:brightbox/ruby-ng >/dev/null 2>&1
apt-get -y update >/dev/null 2>&1

install 'development tools' build-essential

install 'libssl-dev' libssl-dev
install 'libreadline-dev' libreadline-dev
install 'zlib1g-dev' zlib1g-dev
install 'libsqlite3-dev' libsqlite3-dev
install 'nodejs' nodejs
