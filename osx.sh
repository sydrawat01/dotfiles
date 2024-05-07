#!/bin/bash
#################################################################################################################################################
##                                                                   osx.sh                                                                    ##
##                                                          Author: Siddharth Rawat                                                            ##
##                                                     Copyright 2024 sydrawat01/dotfiles                                                      ##
#################################################################################################################################################

echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                           INSTALL SCRIPT v3.0                                                           |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
start=$(date +%s)
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
		printf '⚙️ Configuring homebrew on your Mac...\n'
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
echo "|                                                            Basic Softwares                                                              |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"

# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
# echo "|                                                                                                                                         |"
# echo "|                                                         Firefox Developer Ed.                                                           |"
# echo "|                                                                                                                                         |"
# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
printf '📦 Installing Firefox Developer Edition...\n'
brew install --cask firefox-developer-edition
FIREFOX=$?
if [ $FIREFOX -eq 0 ]; then
	printf '✨ Firefox Developer Edition installed successfully!\n'
else
	printf '💩 Oops! Something went wrong while installing Firefox Developer Edition.\n'
fi

# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
# echo "|                                                                                                                                         |"
# echo "|                                                         Google Chrome Canary                                                            |"
# echo "|                                                                                                                                         |"
# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
printf '📦 Installing Google Chrome Canary Edition...\n'
brew install --cask google-chrome-canary
CHROME=$?
if [ $CHROME -eq 0 ]; then
	printf '✨ Google Chrome Developer Edition installed successfully!\n'
else
	printf '💩 Oops! Something went wrong while installing Google Chrome Developer Edition.\n'
fi

# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
# echo "|                                                                                                                                         |"
# echo "|                                                          Brave Browser Beta                                                             |"
# echo "|                                                                                                                                         |"
# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
printf '📦 Installing Brave Browser Beta...\n'
brew install --cask brave-browser-beta
BRAVE=$?
if [ $BRAVE -eq 0 ]; then
	printf '✨ Brave Browser Beta installed successfully!\n'
else
	printf '💩 Oops! Something went wrong while installing Brave Browser Beta.\n'
fi

# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
# echo "|                                                                                                                                         |"
# echo "|                                                                  iTerm2                                                                 |"
# echo "|                                                                                                                                         |"
# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
printf '📦 Installing iTerm2...\n'
brew install --cask iterm2
ITERM=$?
if [ $ITERM -eq 0 ]; then
	printf '✨ iTerm2 installed successfully!\n'
else
	printf '💩 Oops! Something went wrong while installing iTerm2.\n'
fi

# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
# echo "|                                                                                                                                         |"
# echo "|                                                                Nerd Fonts                                                               |"
# echo "|                                                                                                                                         |"
# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
printf '📦 Installing JetBrains Mono Nerd font...\n'
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font
JBM=$?
if [ $JBM -eq 0 ]; then
	printf '✨ JetBrains Mono Nerd font installed successfully!\n'
else
	printf '💩 Oops! Something went wrong while installing JetBrains Mono Nerd font.\n'
fi

# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
# echo "|                                                                                                                                         |"
# echo "|                                                                    tmux                                                                 |"
# echo "|                                                                                                                                         |"
# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
printf '📦 Installing tmux...\n'
brew install tmux
TMUX=$?
if [ $TMUX -eq 0 ]; then
	printf '✨ tmux installed successfully!\n'
else
	printf '💩 Oops! Something went wrong while installing tmux.\n'
fi

# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
# echo "|                                                                                                                                         |"
# echo "|                                                                  Starship                                                               |"
# echo "|                                                                                                                                         |"
# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"

printf '📦 Installing Starship...\n'
brew install starship
SHIP=$?
if [ $SHIP -eq 0 ]; then
	printf '✨ Starship installed successfully!\n'
else
	printf '💩 Oops! Something went wrong while installing Starship.\n'
fi

# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
# echo "|                                                                                                                                         |"
# echo "|                                                                  neovim                                                                 |"
# echo "|                                                                                                                                         |"
# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
printf '📦 Installing neovim...\n'
brew install neovim
NVIM=$?
if [ $NVIM -eq 0 ]; then
	printf '✨ neovim installed successfully!\n'
else
	printf '💩 Oops! Something went wrong while installing neovim.\n'
fi

# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
# echo "|                                                                                                                                         |"
# echo "|                                                                 GNU Stow                                                                |"
# echo "|                                                                                                                                         |"
# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
printf '📦 Installing GNU Stow...\n'
brew install stow
NVIM=$?
if [ $NVIM -eq 0 ]; then
	printf '✨ GNU Stow installed successfully!\n'
else
	printf '💩 Oops! Something went wrong while installing GNU Stow.\n'
fi

# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
# echo "|                                                                                                                                         |"
# echo "|                                                               Postman                                                                   |"
# echo "|                                                                                                                                         |"
# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
printf '📦 Installing Postman...\n'
brew install --cask postman
POSTMAN=$?
if [ $POSTMAN -eq 0 ]; then
	printf '✨ Postman installed successfully!\n'
else
	printf '💩 Oops! Something went wrong while installing Postman.\n'
fi

# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
# echo "|                                                                                                                                         |"
# echo "|                                                                VSCode                                                                   |"
# echo "|                                                                                                                                         |"
# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
printf '📦 Installing VSCode...\n'
brew install --cask visual-studio-code
VSC=$?
if [ $VSC -eq 0 ]; then
	printf '✨ VSCode installed successfully!\n'
	printf "⚙️  Configuring VSCode...\n."
	cat ./configs/vscode/extensions.txt | xargs -L 1 code --install-extension
	VSC=$?
	if [ $VSC -eq 0 ]; then
		printf '✔  Done.\n'
	else
		printf '💩 Oops! Something went wrong while installing VSCode extensions.\n'
	fi
else
	printf '💩 Oops! Something went wrong while installing VSCode.\n'
fi

# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
# echo "|                                                                                                                                         |"
# echo "|                                                              Oh-My-Zsh                                                                  |"
# echo "|                                                                                                                                         |"
# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
printf '📦 Installing oh-my-zsh...\n'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
OMZ=$?
if [ $OMZ -eq 0 ]; then
	printf '✨ oh-my-zsh installed successfully!\n'
else
	printf '💩 Oops! Something went wrong while installing oh-my-zsh.\n'
fi

# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
# echo "|                                                                                                                                         |"
# echo "|                                                                Slack                                                                    |"
# echo "|                                                                                                                                         |"
# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
printf '📦 Installing Slack...\n'
brew install --cask slack
SLACK=$?
if [ $SLACK -eq 0 ]; then
	printf '✨ Slack installed successfully!\n'
else
	printf '💩 Oops! Something went wrong while installing Slack.\n'
fi

# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
# echo "|                                                                                                                                         |"
# echo "|                                                                 Zoom                                                                    |"
# echo "|                                                                                                                                         |"
# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
printf '📦 Installing Zoom...\n'
brew install --cask zoom
ZOOM=$?
if [ $ZOOM -eq 0 ]; then
	printf '✨ Zoom installed successfully!\n'
else
	printf '💩 Oops! Something went wrong while installing Zoom.\n'
fi

# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
# echo "|                                                                                                                                         |"
# echo "|                                                              Bitwarden                                                                  |"
# echo "|                                                                                                                                         |"
# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
printf '📦 Installing Bitwarden...\n'
brew install --cask bitwarden
BIT=$?
if [ $BIT -eq 0 ]; then
	printf '✨ Bitwarden installed successfully!\n'
else
	printf '💩 Oops! Something went wrong while installing Bitwarden.\n'
fi

# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
# echo "|                                                                                                                                         |"
# echo "|                                                               OneDrive                                                                  |"
# echo "|                                                                                                                                         |"
# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
printf '📦 Installing OneDrive...\n'
brew install --cask onedrive
OND=$?
if [ $OND -eq 0 ]; then
	printf '✨ OneDrive installed successfully!\n'
else
	printf '💩 Oops! Something went wrong while installing OneDrive.\n'
fi

# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
# echo "|                                                                                                                                         |"
# echo "|                                                            Logi Options +                                                               |"
# echo "|                                                                                                                                         |"
# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
printf '📦 Installing Logi Options +...\n'
brew install --cask logi-options-plus
LOP=$?
if [ $LOP -eq 0 ]; then
	printf '✨ Logi Options + installed successfully!\n'
else
	printf '💩 Oops! Something went wrong while installing Logi Options +.\n'
fi

# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
# echo "|                                                                                                                                         |"
# echo "|                                                           NVM, NodeJS & NPM                                                             |"
# echo "|                                                                                                                                         |"
# echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
# printf '📦 Installing Node Version Manager...\n'
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
# NVM=$?
# if [ $NVM -eq 0 ]; then
# 	printf '✨ Node Version Manager installed successfully!\n'
# 	source ~/.zshrc
# 	NVM=$(command -v nvm)
# 	NVM=$?
# 	if [ $NVM -eq 0 ]; then
# 		printf '📦 Installing LTS version of NodeJS...\n'
# 		nvm install --lts
# 		printf "⚙️  Configuring NodeJS...\n."
# 		nvm use --lts
# 		echo "node $(node --version)"
# 		echo "npm $(npm --version)"
# 		printf '✔  Done.\n'
# 	else
# 		printf '💩 Oops! Could not find the binaries linked to NVM. Try restarting your terminal.\n'
# 	fi
# else
# 	printf '💩 Oops! Something went wrong while installing Node Version Manager.\n'
# fi

echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
echo "|                                                                                                                                         |"
echo "|                                                     Performing Homebrew Cleanup                                                         |"
echo "|                                                                                                                                         |"
echo "+-----------------------------------------------------------------------------------------------------------------------------------------+"
brew cleanup --prune=all
BRWCLNP=$?
if [ $BRWCLNP -eq 0 ]; then
	printf '✔  Cleanup complete.\n'
else
	printf '❌  Error occurred while performing brew cleanup\n'
fi

runtime=$((($(date +%s) - start) / 60))
printf 'Setup completed in %s minutes\n' "$runtime"
