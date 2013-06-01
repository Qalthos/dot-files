#
# .zshrc is sourced in interactive shells.
# It should contain commands to set up aliases,
# functions, options, key bindings, etc.
#

autoload -U compinit
compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## keep background processes at full speed
#setopt NOBGNICE
## restart running processes on exit
#setopt HUP

## history
HISTFILE=~/.zsh/history
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt histignorealldups
## for sharing history between zsh processes
#setopt INC_APPEND_HISTORY
#setopt SHARE_HISTORY

## never ever beep ever
#setopt NO_BEEP

## automatically decide when to page a list of completions
#LISTMAX=0

## disable mail checking
#MAILCHECK=0

# autoload -U colors
#colors

if [[ -e .Xmodmap ]]; then
    xmodmap ~/.Xmodmap
fi

source /etc/profile
source ~/.zsh/prompt
source ~/.zsh/aliases
source ~/.zsh/keyboard

export EDITOR=vim
export PATH=$PATH:~/bin:~/scripts
source distro_check.sh

# Set up virtualenv & do distro-specific stuff
venv=virtualenvwrapper.sh
case $DISTRO in
    "Arch")
        eval "$(hub alias -s)"
        export VIRTUALENV_PYTHON=python2
        ;;
    "Ubuntu" | "Debian")
        venv=/etc/bash_completion.d/virtualenvwrapper
        source /usr/share/autojump/autojump.zsh
        ;;
esac
source $venv
echo $DISTRO

if [ $(which fortune) ]
then
    fortune -ac
fi
