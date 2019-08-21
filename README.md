# .files

These are my dotfiles. Take anything you want, but at your own risk.

I'm still figuring my way around these things! So it's going to take a while.

## Folder structure

```
.
├── install.sh
├── LICENSE
├── README.md
├── configs
│ ├── hyper
│ │ ├── .hyper.js
│ │ ├── .zprofile
│ │ └── .zshrc
│ ├── vim
│ │ └── .vimrc
│ └── vscode
│   ├── .babelrc
│   ├── .eslintrc
│   ├── .prettierrc
│   └── settings.json
├── extras
│ └── cmd-colors.sh
├── git
│ └── .gitconfig
├── runcom
│ └── .bash_profile
└── snippets
 └── java.json
```

## The `dotfiles` command

    $ dotfiles help
    Usage: dotfiles <command>

    Commands:
       clean            Clean up caches (brew, npm, gem, rvm)
       dock             Apply macOS Dock settings
       edit             Open dotfiles in IDE (code) and Git GUI (stree)
       help             This help message
       macos            Apply macOS system defaults
       test             Run tests
       update           Update packages and pkg managers (OS, brew, npm, gem)

## Customize/extend

You can put your custom settings, such as Git credentials in the `system/.custom` file which will be sourced from `.bash_profile` automatically. This file is in `.gitignore`.

Alternatively, you can have an additional, personal dotfiles repo at `~/.extra`. The runcom `.bash_profile` sources all `~/.extra/runcom/*.sh` files.

## Additional resources

- [Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles)
- [Homebrew](https://brew.sh)
- [Homebrew Cask](http://caskroom.io)
- [Bash prompt](https://wiki.archlinux.org/index.php/Color_Bash_Prompt)
- [Solarized Color Theme for GNU ls](https://github.com/seebi/dircolors-solarized)

## Credits

Many thanks to the [dotfiles community](https://dotfiles.github.io).
