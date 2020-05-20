#!/bin/bash

start=`date +%s`
bold=$(tput bold)
normal=$(tput sgr0)
reset=`tput sgr0`

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
brew update
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

############# Hyper Terminal + oh-my-zsh #############
install "############# Hyper Terminal + oh-my-zsh #############"
echo -n "Do you wish to install Hyper Terminal with oh-my-zsh(${bold}y${reset}/${bold}n${reset})? "
read hyperomz

if [ "$hyperomz" != "${hyperomz#[Yy]}" ] ;then
    echo Yes
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    brew cask install hyper
    cp ./configs/.hyper.js ~/
    cp ./runcom/.z* ~/
else
    echo No
fi

install '############# adding spaceship-prompt #############'
npm i -g spaceship-prompt

install '############# adding .zshrc for oh-my-zsh #############'
cp ./runcom/.zshrc ~/

install '############# adding .hyper.js config #############'
cp ./configs/hyper/.hyper.js ~/

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

############# android studio #############
install "############# android studio #############"
echo -n "Do you wish to install android studio (${bold}y${reset}/${bold}n${reset})? "
read androidstudio

if [ "$androidstudio" != "${androidstudio#[Yy]}" ] ;then
    echo Yes
    brew cask install android-studio
else
    echo No
fi

############# slack #############
install "############# slack #############"
echo -n "Do you wish to install slack (${bold}y${reset}/${bold}n${reset})? "
read slack

if [ "$slack" != "${slack#[Yy]}" ] ;then
    echo Yes
    brew cask install slack
else
    echo No
fi

############# bitwarden #############
install "############# bitwarden #############"
echo -n "Do you wish to install bitwarden (${bold}y${reset}/${bold}n${reset})? "
read bitwarden

if [ "$bitwarden" != "${bitwarden#[Yy]}" ] ;then
    echo Yes
    brew cask install bitwarden
else
    echo No
fi

############# YACReader #############
install "############# YACReader #############"
echo -n "Do you wish to install YACReader (${bold}y${reset}/${bold}n${reset})? "
read yacr

if [ "$yacr" != "${yacr#[Yy]}" ] ;then
    echo Yes
    brew cask install yacreader
else
    echo No
fi

############# IINA Player #############
install "############# IINA Player #############"
echo -n "Do you wish to install IINA Player (${bold}y${reset}/${bold}n${reset})? "
read iina

if [ "$iina" != "${iina#[Yy]}" ] ;then
    echo Yes
    brew cask install iina
else
    echo No
fi

############# MongoDB Community Ed. #############
install "############# MongoDB Community Ed. #############"
echo -n "Do you wish to install MongoDB Community Edition (${bold}y${reset}/${bold}n${reset})? "
read mongo

if [ "$mongo" != "${mongo#[Yy]}" ] ;then
    echo Yes
    brew tap mongodb/brew
    brew install mongodb-community
else
    echo No
fi

############# python #############
install "############# python #############"
echo -n "Do you wish to install python (${bold}y${reset}/${bold}n${reset})? "
read py

if [ "$py" != "${py#[Yy]}" ] ;then
    echo Yes
    brew install python
else
    echo No
fi

############# transmission #############
install "############# transmission #############"
echo -n "Do you wish to install transmission (${bold}y${reset}/${bold}n${reset})? "
read transmission

if [ "$transmission" != "${transmission#[Yy]}" ] ;then
    echo Yes
    brew install transmission
else
    echo No
fi

############# watchman #############
install "############# watchman #############"
echo -n "Do you wish to install watchman (${bold}y${reset}/${bold}n${reset})? "
read watchman

if [ "$watchman" != "${watchman#[Yy]}" ] ;then
    echo Yes
    brew install watchman
else
    echo No
fi

############# youtube-dl #############
install "############# youtube-dl #############"
echo -n "Do you wish to install youtube-dl (${bold}y${reset}/${bold}n${reset})? "
read ydl

if [ "$ydl" != "${ydl#[Yy]}" ] ;then
    echo Yes
    brew install youtube-dl
else
    echo No
fi

############# sketch #############
install "############# sketch #############"
echo -n "Do you wish to install sketch (${bold}y${reset}/${bold}n${reset})? "
read sktch

if [ "$sktch" != "${sktch#[Yy]}" ] ;then
    echo Yes
    brew cask install sketch
else
    echo No
fi

############# git #############
install "############# git #############"
echo -n "Do you wish to install git (${bold}y${reset}/${bold}n${reset})? "
read git

if [ "$git" != "${git#[Yy]}" ] ;then
    echo Yes
    brew install git
else
    echo No
fi

install '############# adding git config #############'
cp ./git/.gitconfig ~/

install "############# CLEANING HOMEBREW #############"
brew cleanup

runtime=$((($(date +%s)-$start)/60))
install "############# Total Setup Time ############# $runtime Minutes"
