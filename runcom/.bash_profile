# These are for Linux, not for MacOS
# For MacOS, refer .zprofile

PATH=$PATH:/Users/sid/Documents/Software/mongodb/bin
PS1="\h:\W \u\$"

case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'
    show_command_in_title_bar()
    {
        case "$BASH_COMMAND" in
            *\033]0*)
                ;;
            *)
                echo -ne "\033]0;${BASH_COMMAND} - ${PWD##*/}\007"
                ;;
        esac
    }
    trap show_command_in_title_bar DEBUG
    ;;
*)
    ;;
esac

#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#. $(brew --prefix)/etc/bash_completion
#fi
