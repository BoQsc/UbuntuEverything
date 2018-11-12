#!/bin/bash
function download() {
  command wget --quiet --show-progress --timestamping $1
}

function extract() {
  command sudo tar --verbose --extract --gzip --overwrite $1
}

function remove() {
  command rm --recursive --force $1
}

function rename() {
  command mv -T --no-clobber $1
}

function move() {
  command mv --no-clobber $1
}

function createDirectory() {
  command sudo mkdir --parents $1
}

function enableExtension() {
  command gnome-shell-extension-tool --enable-extension=$1
}

function listExtensions() {
  command gsettings get org.gnome.shell enabled-extensions
}

function disableUbuntuIcons(){
  gsettings set org.gnome.desktop.background show-desktop-icons false
}


download "https://gitlab.gnome.org/World/ShellExtensions/desktop-icons/-/archive/master/desktop-icons-master.tar.gz";
createDirectory "$HOME/.local/share/gnome-shell/extensions/desktop-icons@csoriano/"
extract --file="desktop-icons-master.tar.gz"
remove "desktop-icons-master.tar.gz";
#rename 'desktop-icons-master desktop-icons@csoriano'
move "desktop-icons-master/* $HOME/.local/share/gnome-shell/extensions/desktop-icons@csoriano/";
remove "desktop-icons-master/";
enableExtension "desktop-icons@csoriano";
disableUbuntuIcons;


