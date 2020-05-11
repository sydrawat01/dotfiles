// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

// standard ANSI Colors
const black = '#2b303b';
const red = '#bf616a';
const green = '#a3be8c';
const yellow = '#ebcb8b';
const blue = '#8fa1b3';
const magenta = '#b48ead';
const cyan = '#96b5b4';
const white = '#c0c5ce';
const lightBlack = '#616775';
const lightRed = '#ea919a';
const lightGreen = '#d0edb6';
const lightYellow = '#f9dea7';
const lightBlue = '#b4cee8';
const lightMagenta = '#eabee2';
const lightCyan = '#c3e5e4';
const lightWhite = '#e1e8f4';

const accentColor = blue;

module.exports = {
  config: {
    // choose either `'stable'` for receiving highly polished,
    // or `'canary'` for less polished but more frequent updates
    updateChannel: 'stable',

    // default font size in pixels for all tabs
    fontSize: 13,

    // font family with optional fallbacks
    fontFamily: 'Dank Mono, Operator Mono Lig',

    // default font weight: 'normal' or 'bold'
    fontWeight: 'normal',

    // font weight for bold characters: 'normal' or 'bold'
    fontWeightBold: 'bold',

    // line height as a relative unit
    lineHeight: 1,

    // letter spacing as a relative unit
    letterSpacing: 0,

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: 'rgba(190,226,135,0.8)',

    // terminal text color under BLOCK cursor
    cursorAccentColor: accentColor,

    // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
    cursorShape: 'UNDERLINE',

    // set to `true` (without backticks and without quotes) for blinking cursor
    cursorBlink: false,

    // color of the text
    foregroundColor: 'rgb(192, 197, 206,1)',

    // terminal background color
    // opacity is only supported on macOS
    backgroundColor: 'rgba(40,44,52,1)',

    // terminal selection color
    selectionColor: 'rgba(164,205,255,0.3)',

    // border color (window, tabs)
    borderColor: 'rgba(255,255,255, 0.2)',

    // size of window by pixels (width, height)
    windowSize: [810, 750],

    // custom CSS to embed in the main window
    css: '',

    // custom CSS to embed in the terminal window
    termCSS: '',

    // custom padding (CSS format, i.e.: `top right bottom left`)
    padding: '12px 14px',

    // hyperline plugin custom config
    hyperline: {
      plugins: [
        "hostname",
        "ip",
        "memory",
        "battery",
        "cpu",
        "network"
      ]
    },

    /* the full list. if you're going to provide the full color palette,
     * including the 6 x 6 color cubes and the grayscale map, just provide
     * an array here instead of a color map object
     */
    colors: {
      black,
      red,
      green,
      yellow,
      blue,
      magenta,
      cyan,
      white,
      lightBlack,
      lightRed,
      lightGreen,
      lightYellow,
      lightBlue,
      lightMagenta,
      lightCyan,
      lightWhite
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default

    shell: '',

    // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
    // by default `['--login']` will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to `false` for no bell
    bell: false,

    // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
    copyOnSelect: false,

    // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
    defaultSSHApp: true,

    // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
    // selection is present (`true` by default on Windowls -s and disables the context menu feature)
    quickEdit: false,

    // choose either `'vertical'`, if you want the column mode when Option key is hold during selection (Default)
    // or `'force'`, if you want to force selection regardless of whether the terminal is in mouse events mode
    // (inside tmux or vim with mouse mode enabled for example).
    macOptionSelectionMode: 'vertical',

    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',

    // Whether to use the WebGL renderer. Set it to false to use canvas-based
    // rendering (slower, but supports transparent backgrounds)
    webGLRenderer: true,

    // for advanced config flags please refer to https://hyper.is/#cfg
  },

  /* a list of plugins to fetch and install from npm
   * format: [@org/]project[#version]
   * examples:
   *  `@company/project`
   *  `project#1.0.1`
   */
  plugins: [
    "hyperline",
    "hypercwd",
    "hyper-tab-icons-plus",
  ],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [],

  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  },

};
