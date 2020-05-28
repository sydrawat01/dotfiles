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
