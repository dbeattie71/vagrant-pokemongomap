#!/usr/bin/env bash

function install {
    echo installing $1
    #apt-get -y install $1
    apt-get -y install $1 >/dev/null 2>&1
}

function update {
    echo updating package information
    # apt-get -y update
    apt-get -y update >/dev/null 2>&1
}

update
install git
install build-essential
install python
install python-pip
install python-dev
install libssl-dev
update