#!/bin/bash
#################################################################################################################################################
##                                                                   osx.sh                                                                    ##
##                                                          Author: Siddharth Rawat                                                            ##
##                                                     Copyright 2022 sydrawat01/dotfiles                                                      ##
#################################################################################################################################################

echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                           INSTALL SCRIPT v2.0                                                           |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
start=$(date +%s)
bold=$(tput bold)
reset=$(tput sgr0)
USER=$(whoami)

sleep 2

# Install cmd line tools IF not installed
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                         Setting up XCode tools                                                          |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
xcode-select -p 1>/dev/null
XCODE=$?
if [ $XCODE -eq 0 ]; then
    printf '⏭ Command line developer tools are already installed.\nSkipping...\n\n'
else
    printf ' 📦 Installing XCode command line developer tools...\nThis may take a while.\n'
    xcode-select --install
    INSTALL=$?
    if [ $INSTALL -eq 0 ]; then
        printf '✨ XCode developer tools installed successfully!\n'
    else
        printf '💩 Oops! Something went wrong while installing XCode developer tools.\n'
    fi
fi

# Install homebrew IF not installed
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                          Installing homebrew                                                            |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
BREW=$(which brew)
BREW=$?
if [ $BREW -eq 0 ]; then
    printf '⏭ Homebrew is already installed.\nSkipping...\n\n'
else
    printf '📦 Installing homebrew...\n'
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    BREW=$?
    if [ $BREW -eq 0 ]; then
        printf '✨ Homebrew installed successfully!\n'
        printf '⚙️  Configuring homebrew on your Mac...\n'
        echo '# Set PATH, MANPATH, etc. for Homebrew.' >>/Users/"$USER"/.zprofile
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>/Users/"$USER"/.zprofile
        eval "$(/opt/homebrew/bin/brew shellenv)"
        source /Users/"$USER"/.zprofile
        BREW="$(brew -v)"
        BREW=$?
        if [ $BREW -eq 0 ]; then
            printf "⚙️  Updating homebrew...\nThis may take a while.\n"
            brew update
            printf '✔  Done.\n'
        else
            printf '💩 Oops! Could not find the binaries linked to Homebrew. Try restaring your terminal.\n'
        fi
    else
        printf '💩 Oops! Something went wrong while installing Homebrew.\n'
    fi
fi

echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                         Firefox Developer Ed.                                                           |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo -n "👾 Do you wish to install Firefox Developer Edition (${bold}y${reset}/${bold}n${reset})? "
read -r firefox

if [ "$firefox" != "${firefox#[Yy]}" ]; then
    printf '📦 Installing Firefox Developer Edition...\n'
    brew install --cask homebrew/cask-versions/firefox-developer-edition
    FIREFOX=$?
    if [ $FIREFOX -eq 0 ]; then
        printf '✨ Firefox Developer Edition installed successfully!\n'
    else
        printf '💩 Oops! Something went wrong while installing Firefox Developer Edition.\n'
    fi
else
    printf '\n⏭ Skipping...\n\n'
fi

echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                      Google Chrome Developer Ed.                                                        |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo -n "👾 Do you wish to install Google Chrome Developer Edition (${bold}y${reset}/${bold}n${reset})? "
read -r chrome

if [ "$chrome" != "${chrome#[Yy]}" ]; then
    printf '📦 Installing Google Chrome Developer Edition...\n'
    brew install --cask homebrew/cask-versions/google-chrome-dev
    CHROME=$?
    if [ $CHROME -eq 0 ]; then
        printf '✨ Google Chrome Developer Edition installed successfully!\n'
    else
        printf '💩 Oops! Something went wrong while installing Google Chrome Developer Edition.\n'
    fi
else
    printf '\n⏭ Skipping...\n\n'
fi

echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                                  iTerm2                                                                 |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo -n "👾 Do you wish to install iTerm2 (${bold}y${reset}/${bold}n${reset})? "
read -r iterm

if [ "$iterm" != "${iterm#[Yy]}" ]; then
    printf '📦 Installing iTerm2...\n'
    brew install --cask iterm2 
    ITERM=$?
    if [ $ITERM -eq 0 ]; then
        printf '✨ iTerm2 installed successfully!\n'
    else
        printf '💩 Oops! Something went wrong while installing iTerm2.\n'
    fi
else
    printf '\n⏭ Skipping...\n\n'
fi

echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                                    tmux                                                                 |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo -n "👾 Do you wish to install tmux(${bold}y${reset}/${bold}n${reset})? "
read -r tmux

if [ "$tmux" != "${tmux#[Yy]}" ]; then
    printf '📦 Installing tmux...\n'
    brew install tmux 
    TMUX=$?
    if [ $TMUX -eq 0 ]; then
        printf '✨ tmux installed successfully!\n'
    else
        printf '💩 Oops! Something went wrong while installing tmux.\n'
    fi
else
    printf '\n⏭ Skipping...\n\n'
fi

echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                                  neovim                                                                 |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo -n "👾 Do you wish to install neovim(${bold}y${reset}/${bold}n${reset})? "
read -r neovim

if [ "$neovim" != "${neovim#[Yy]}" ]; then
    printf '📦 Installing neovim...\n'
    brew install neovim
    NVIM=$?
    if [ $NVIM -eq 0 ]; then
        printf '✨ neovim installed successfully!\n'
    else
        printf '💩 Oops! Something went wrong while installing neovim.\n'
    fi
else
    printf '\n⏭ Skipping...\n\n'
fi

echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                           NVM, NodeJS & NPM                                                             |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo -n "👾 Do you wish to install Node Version Manager (${bold}y${reset}/${bold}n${reset})? "
read -r node

if [ "$node" != "${node#[Yy]}" ]; then
    printf '📦 Installing Node Version Manager...\n'
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
    NVM=$?
    if [ $NVM -eq 0 ]; then
        printf '✨ Node Version Manager installed successfully!\n'
        source ~/.zshrc
        NVM=$(command -v nvm)
        NVM=$?
        if [ $NVM -eq 0 ]; then
            printf '⚙️  Configuring NodeJS & NPM on your Mac...\n'
            echo -n "👾 Do you wish to install the LTS version of NodeJS (${bold}y${reset}/${bold}n${reset})? "
            read -r version
            if [ "$version" != "${version#[Yy]}" ]; then
                printf '📦 Installing LTS version of NodeJS...\n'
                nvm install --lts
                printf "⚙️  Configuring NodeJS...\n."
                nvm use --lts
                echo "node $(node --version)"
                echo "npm $(npm --version)"
                printf '✔  Done.\n'
            else
                printf '📦 Installing LTS version of NodeJS...\n'
                nvm install node
                printf "⚙️  Configuring NodeJS...\n."
                nvm use node
                echo "node $(node --version)"
                echo "npm $(npm --version)"
                printf '✔  Done.\n'
            fi
        else
            printf '💩 Oops! Could not find the binaries linked to NVM. Try restarting your terminal.\n'
        fi
    else
        printf '💩 Oops! Something went wrong while installing Node Version Manager.\n'
    fi
else
    printf '\n⏭ Skipping...\n\n'
fi

echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                         Yarn Package Manager                                                            |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo -n "👾 Do you wish to install Yarn Package Manager (${bold}y${reset}/${bold}n${reset})? "
read -r yarn

if [ "$yarn" != "${yarn#[Yy]}" ]; then
    printf '📦 Installing Yarn Package Manager...\n'
    brew install yarn
    YARN=$?
    if [ $YARN -eq 0 ]; then
        printf '✨ Node Version Manager installed successfully!\n'
    else
        printf '💩 Oops! Something went wrong while installing Yarn Package Manager.\n'
    fi
else
    printf '\n⏭ Skipping...\n\n'
fi

echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                               Postman                                                                   |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo -n "👾 Do you wish to install Postman (${bold}y${reset}/${bold}n${reset})? "
read -r postman

if [ "$postman" != "${postman#[Yy]}" ]; then
    printf '📦 Installing Postman...\n'
    brew install --cask postman
    POSTMAN=$?
    if [ $POSTMAN -eq 0 ]; then
        printf '✨ Postman installed successfully!\n'
    else
        printf '💩 Oops! Something went wrong while installing Postman.\n'
    fi
else
    printf '\n⏭ Skipping...\n\n'
fi

echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                                VSCode                                                                   |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo -n "Do you wish to install VSCode (${bold}y${reset}/${bold}n${reset})? "
read -r vscode

if [ "$vscode" != "${vscode#[Yy]}" ]; then
    printf '📦 Installing VSCode...\n'
    brew install --cask visual-studio-code
    VSC=$?
    if [ $VSC -eq 0 ]; then
        printf '✨ VSCode installed successfully!\n'
        printf "⚙️  Configuring VSCode...\n."
        cat ./configs/vscode/extensions.txt | xargs -L 1 code --install-extension
        VSC=$?
        if [ $VSC -eq 0 ]; then
            cp ./configs/vscode/settings.json "$HOME"/Library/Application\ Support/Code/User/
            VSC=$?
            if [ $VSC -eq 0 ]; then
                printf '✔  Done.\n'
            else
                printf '💩 Oops! Couldn'\''t configure VSCode settings.\nTry manually copy the settings.json file from configs/vscode folder?\n'
            fi
        else
            printf '💩 Oops! Something went wrong while installing VSCode extensions.\n'
        fi
    else
        printf '💩 Oops! Something went wrong while installing VSCode.\n'
    fi
else
    printf '\n⏭ Skipping...\n\n'
fi

echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                              Oh-My-Zsh                                                                  |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo -n "👾 Do you wish to install oh-my-zsh(${bold}y${reset}/${bold}n${reset})? "
read -r omz

if [ "$omz" != "${omz#[Yy]}" ]; then
    printf '📦 Installing oh-my-zsh...\n'
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    OMZ=$?
    if [ $OMZ -eq 0 ]; then
        printf '✨ oh-my-zsh installed successfully!\n'
    else
        printf '💩 Oops! Something went wrong while installing oh-my-zsh.\n'
    fi
else
    printf '\n⏭ Skipping...\n\n'
fi

echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                            Hyper Terminal                                                               |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo -n "👾 Do you wish to install Hyper(${bold}y${reset}/${bold}n${reset})? "
read -r hyper

if [ "$hyper" != "${hyper#[Yy]}" ]; then
    printf '📦 Installing Hyper...\n'
    brew install --cask hyper
    HYPER=$?
    if [ $HYPER -eq 0 ]; then
        printf '✨ Hyper installed successfully!\n'
        printf "⚙️  Configuring Hyper Terminal...\n."
        cp ./configs/hyper/.hyper.js ~/
    else
        printf '💩 Oops! Something went wrong while installing Hyper.\n'
    fi
else
    printf '\n⏭ Skipping...\n\n'
fi

echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                                Slack                                                                    |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo -n "👾 Do you wish to install Slack (${bold}y${reset}/${bold}n${reset})? "
read -r slack

if [ "$slack" != "${slack#[Yy]}" ]; then
    printf '📦 Installing Slack...\n'
    brew install --cask slack
    SLACK=$?
    if [ $SLACK -eq 0 ]; then
        printf '✨ Slack installed successfully!\n'
    else
        printf '💩 Oops! Something went wrong while installing Slack.\n'
    fi
else
    printf '\n⏭ Skipping...\n\n'
fi

echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                                 Zoom                                                                    |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo -n "👾 Do you wish to install Zoom (${bold}y${reset}/${bold}n${reset})? "
read -r zoom

if [ "$zoom" != "${zoom#[Yy]}" ]; then
    printf '📦 Installing Zoom...\n'
    brew install --cask zoom
    ZOOM=$?
    if [ $ZOOM -eq 0 ]; then
        printf '✨ Zoom installed successfully!\n'
    else
        printf '💩 Oops! Something went wrong while installing Zoom.\n'
    fi
else
    printf '\n⏭ Skipping...\n\n'
fi

echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                              Bitwarden                                                                  |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo -n "👾 Do you wish to install Bitwarden (${bold}y${reset}/${bold}n${reset})? "
read -r bitwarden

if [ "$bitwarden" != "${bitwarden#[Yy]}" ]; then
    printf '📦 Installing Bitwarden...\n'
    brew install --cask bitwarden
    BIT=$?
    if [ $BIT -eq 0 ]; then
        printf '✨ Bitwarden installed successfully!\n'
    else
        printf '💩 Oops! Something went wrong while installing Bitwarden.\n'
    fi
else
    printf '\n⏭ Skipping...\n\n'
fi

echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                      Miscellaneous Configurations                                                       |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
printf "⚙️  Configuring git VCS...\n."
cp ./git/.gitconfig ~/
GIT=$?
if [ $GIT -eq 0 ]; then
    cp ./git/.gitmessage ~/
    GIT=$?
    if [ $GIT -eq 0 ]; then
        printf '✔  Git configuration done.\n'
        printf '🔑 To setup SSH keys for GitHub, refer here: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/about-ssh \n'
        printf '🔐 Remember to enable 2FA to keep your accounts secure!\n'
    fi
else
    printf '❌  Error occurred while configuring git VCS\n'
fi

printf "⚙️  Configuring Vim...\n."
cp ./configs/vim/.vimrc ~/
VIM=$?
if [ $VIM -eq 0 ]; then
    printf '✔  Vim configuration done.\n'
else
    printf '❌  Error occurred while configuring Vim\n'
fi

printf "⚙️  Configuring Dracula Terminal theme...\n."
brew tap dracula/install
TERM=$?
if [ $TERM -eq 0 ]; then
    brew install --cask dracula-terminal
    TERM=$?
    if [ $TERM -eq 0 ]; then
        printf '✔  Dracula theme successfully installed.\n'
        printf 'Don'\''t forget to open the terminal app settings to set the dracula theme as the default theme!\n'
        printf 'Also while we have you here, a good window size is 140x40 with Roboto Mono Light for Powerline font, size 12\n'
    fi
else
    printf '❌  Error occurred while configuring Dracula Terminal theme\n'
fi

printf '⚠️  Please note /runcom settings are not being installed, as they might differ.\n'
printf 'The settings for sydrawat01/dotfiles depends on another package called '\''fig'\''\n'
printf 'Make changes to these files at your own risk!\n'

echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                     Performing Homebrew Cleanup                                                         |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
brew cleanup
BRWCLNP=$?
if [ $BRWCLNP -eq 0 ]; then
    printf '✔  Cleanup complete.\n'
else
    printf '❌  Error occurred while performing brew cleanup\n'
fi

runtime=$((($(date +%s) - start) / 60))
printf 'Setup completed in %s minutes\n' "$runtime"
