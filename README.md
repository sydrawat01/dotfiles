# .files

These are my dotfiles. Take anything you want, but at your own risk.

## Folder structure

```markdown
.
├── osx.sh
├── .gitignore
├── LICENSE
├── package-lock.json
├── package.json
├── README.md
├── configs
│ ├── hyper
│ │ ├── .hyper_plugins
│ │ │ └── blur.js
│ │ └── .hyper.js
│ ├── npm
│ │ └── .npmrc
│ ├── vim
│ │ └── .vimrc
│ └── vscode
│   ├── .babelrc
│   ├── .eslintrc
│   ├── .prettierrc
│   ├── extensions.txt
│   ├── java.json
│   ├── keybindings.json
│   └── settings.json
├── extras
│ └── cmd-colors.sh
├── git
│ ├── hooks
│ │ └── prepare-commit-message
│ └── .gitconfig
└── runcom
  ├── .bash_profile
  ├── .zprofile
  ├── .zshrc
  └── material-theme.terminal
```

## One script install

Clone this repository in your desired path using:

`git clone https://github.com/sydrawat/dotfiles.git`

To run the script to install all basic software with personal configs on your Mac, use this shell script: `osx.sh`.

Before you can use it, provide exec permissions to this file:

`chmod +x osx.sh`

Then, run the file:

`./osx.sh`

All your dev needs installed in one go!

Here are the apps that will be installed using this script:

<p align="left">
  <img alt="vscode" src="https://upload.wikimedia.org/wikipedia/commons/9/9a/Visual_Studio_Code_1.35_icon.svg" width="40" title="VSCode"/>
  <img alt="git" src="https://upload.wikimedia.org/wikipedia/commons/a/ad/Git-icon-black.svg" width="40" title="git" />
  <img alt="firefox" src="https://upload.wikimedia.org/wikipedia/commons/7/7a/Firefox_Developer_Edition_Logo%2C_2017.svg" width="40" title="Firefox Developer Edition" />
  <img alt="nodejs" src="https://cdn.worldvectorlogo.com/logos/nodejs-icon.svg" width="40" title="NodeJS" />
  <img alt="yarn" src="https://raw.githubusercontent.com/yarnpkg/assets/76d30ca2aebed5b73ea8131d972218fb860bd32d/yarn-kitten-circle.svg" width="40" title="Yarn" />
  <img alt="hyper" src="https://raw.githubusercontent.com/dhanishgajjar/terminal-icons/99c1746d66673ec5b2ccca7e9c640679a89c423e/svg/palenight.svg" width="40" title="HyperTerm" />
  <img alt="robo3t" src="https://pbs.twimg.com/profile_images/674614010587795456/sCsiuBmt.png" width="40" title="Robo-3T" />
  <img alt="android studio" src="https://upload.wikimedia.org/wikipedia/commons/3/34/Android_Studio_icon.svg" width="40" title="Android Studio" />
  <img alt="slack" src="https://cdn3.iconfinder.com/data/icons/social-media-2169/24/social_media_social_media_logo_slack-512.png" width="40" title="Slack" />
  <img alt="bitwarden" src="https://upload.wikimedia.org/wikipedia/commons/5/55/Bitwarden_Logo_2018.png" width="40" title="Bitwarden" />
  <img alt="yacr" src="https://icons.iconarchive.com/icons/papirus-team/papirus-apps/512/yacreader-icon.png" width="40" title="YACReader" />
  <img alt="iina" src="https://www.appsformypc.com/wp-content/uploads/2019/03/IINA_Logo.png" width="40" title="IINA Player" />
  <img alt="mongo db" src="https://cdn.iconscout.com/icon/free/png-512/mongodb-5-1175140.png" width="40" title="Mongo DB" />
  <img alt="python" src="https://upload.wikimedia.org/wikipedia/commons/c/c3/Python-logo-notext.svg" width="40" title="Python" />
  <img alt="transmission" src="https://icons.iconarchive.com/icons/sbstnblnd/plateau/512/Apps-transmission-icon.png" width="40" title="Transmission" />
  <img alt="youtube-dl" src="https://upload.wikimedia.org/wikipedia/commons/7/75/YouTube_social_white_squircle_%282017%29.svg" width="40" title="Youtube-dl" />
  <img alt="sketch" src="https://upload.wikimedia.org/wikipedia/commons/5/59/Sketch_Logo.svg" width="40" title="Sketch" />
  <img alt="watchman" src="https://raw.githubusercontent.com/facebook/watchman/master/website/static/logo.png" width="40" title="watchman" />
  <img alt="homebrew" src="https://upload.wikimedia.org/wikipedia/commons/9/95/Homebrew_logo.svg" width="40" height="40"  title="Homebrew" />
</p>


## Additional resources

- [Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles)
- [Homebrew](https://brew.sh)
- [Homebrew Cask](http://caskroom.io)
- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
- [spaceship-prompt](https://github.com/denysdovhan/spaceship-prompt)
- [zeit-hyper](https://github.com/zeit/hyper)
- [cz-conventional-changelog](https://github.com/commitizen)
- [commitizen](https://github.com/commitizen/cz-cli#making-your-repo-commitizen-friendly)
- [cz-emoji](https://github.com/ngryman/cz-emoji)
