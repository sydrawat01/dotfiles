#!/bin/bash

start=`date +%s`
bold=$(tput bold)
normal=$(tput sgr0)
reset=`tput sgr0`

# Install bare necessities

## Install cmd line tools IF not installed
xcode-select -p 1>/dev/null

if [ $? -eq 0 ]
then
  printf 'Command line developer tools are already installed.\nSkipping...\n\n'
else
  printf 'Installing XCode command line developer tools...\nThis may take a while.'
  xcode-select --install
fi

## Install homebrew IF not installed
if test ! $(which brew); then
  printf 'Installing homebrew...\n'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

## Update homebrew
printf "Updating homebrew...\nThis may take a while."
# brew update
# brew upgrade


install() {
  echo
  echo "${bold}$1${normal}"
}

############# Firefox Developer Edition #############
install "############# Firefox Developer Edition #############"
echo -n "Do you wish to install Firefox Developer Edition (${bold}y${reset}/${bold}n${reset})? "
read firefox

if [ "$firefox" != "${firefox#[Yy]}" ] ;then
    echo Yes
    brew cask install firefox-developer-edition
else
    echo No
fi

############# Node.js + NPM #############
install "############# Node.js + NPM #############"
echo -n "Do you wish to install Node.js (${bold}y${reset}/${bold}n${reset})? "
read nodejs

if [ "$nodejs" != "${nodejs#[Yy]}" ] ;then
    echo Yes
    brew install node
else
    echo No
fi

############# Robo-3T #############
install "############# Robo-3T #############"
echo -n "Do you wish to install Robo-3T (${bold}y${reset}/${bold}n${reset})? "
read robo3t

if [ "$robo3t" != "${robo3t#[Yy]}" ] ;then
    echo Yes
    brew cask install robo-3t
else
    echo No
fi

############# VSCode #############
install "############# VSCode #############"
echo -n "Do you wish to install VSCode (${bold}y${reset}/${bold}n${reset})? "
read vscode

if [ "$vscode" != "${vscode#[Yy]}" ] ;then
    echo Yes
    brew cask install visual-studio-code
else
    echo No
fi

install '############# Installing VSCode Extensions #############'
# these were extracted using: code --list-extensions > extensions.txt
cat ./configs/vscode/extensions.txt | xargs -L 1 code --install-extension

############# Android Studio #############
install "############# Android Studio #############"
echo -n "Do you wish to install Android Studio (${bold}y${reset}/${bold}n${reset})? "
read androidstudio

if [ "$androidstudio" != "${androidstudio#[Yy]}" ] ;then
    echo Yes
    brew cask install android-studio
else
    echo No
fi

############# Slack #############
install "############# Slack #############"
echo -n "Do you wish to install Slack (${bold}y${reset}/${bold}n${reset})? "
read slack

if [ "$slack" != "${slack#[Yy]}" ] ;then
    echo Yes
    brew cask install slack
else
    echo No
fi

install "############# CLEANING HOMEBREW #############"
brew cleanup

runtime=$((($(date +%s)-$start)/60))
install "############# Total Setup Time ############# $runtime Minutes"
