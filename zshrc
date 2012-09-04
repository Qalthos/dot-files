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

source /etc/profile
source ~/.zsh/prompt
source ~/.zsh/aliases

export PATH=$PATH:~/scripts
source distro_check.sh

# Set up virtualenv
venv=virtualenvwrapper.sh
case $DISTRO in
    "Arch")
        export VIRTUALENV_PYTHON=python2
        ;;
esac
source $venv
echo $DISTRO
fortune -ac
