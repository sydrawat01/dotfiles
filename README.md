# .files

These are my dotfiles. Take anything you want, but at your own risk.

## Folder structure

```
.
├── install.sh
├── LICENSE
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
│   └── settings.json
├── extras
│ └── cmd-colors.sh
├── git
│ └── .gitconfig
├── runcom
│ ├── .bash_profile
│ ├── .zprofile
│ ├── .zshrc
│ └── material-theme.terminal
└── snippets
 └── java.json
```

## One script install

To run the script to install all basic software on your Mac, use this shell script: `install.sh`.

Before you can use it, provide exec permissions to this file:

`chmod +x install.sh`

Then, run the file:

`./install.sh`

## Additional resources

- [Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles)
- [Homebrew](https://brew.sh)
- [Homebrew Cask](http://caskroom.io)
- [Bash prompt](https://wiki.archlinux.org/index.php/Color_Bash_Prompt)
- [Solarized Color Theme for GNU ls](https://github.com/seebi/dircolors-solarized)
