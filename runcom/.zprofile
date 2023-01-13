# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zprofile.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zprofile.pre.zsh"
PATH="/usr/local/opt/python/libexec/bin:/usr/local/Cellar/mongodb-community/4.2.6/bin/mongo:$PATH"
export PATH

export EDITOR=code

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zprofile.post.zsh" ]] && builtin source "$HOME/.fig/shell/zprofile.post.zsh"
