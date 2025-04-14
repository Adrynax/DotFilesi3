#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prevent doublesourcing
if [[ -z "${BASHRCSOURCED}" ]] ; then
  BASHRCSOURCED="Y"
  # the check is bash's default value
  [[ "$PS1" = '\s-\v\$ ' ]] && PS1='[\u@\h \W]\$ '
  case ${TERM} in
    Eterm*|alacritty*|aterm*|foot*|gnome*|konsole*|kterm*|putty*|rxvt*|tmux*|xterm*)
      PROMPT_COMMAND+=('printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')
      ;;
    screen*)
      PROMPT_COMMAND+=('printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')
      ;;
  esac
fi



if [[ -r /usr/share/bash-completion/bash_completion ]]; then
  . /usr/share/bash-completion/bash_completion
fi

GREEN="\[\e[1;32m\]"
RED="\[\e[1;31m\]"
CYAN="\[\e[1;36m\]"
BLUE="\[\e[1;34m\]"
MAGENTA="\[\e[1;35m\]"
YELLOW="\[\e[1;33m\]"
NORMAL="\[\e[1;0m\]"

#if [[ $EUID == 0 ]] ; then
	#PS1="\e[1;31m \W\] \e[m "
#else
	#PS1="\e[1;32m \W\] \e[m "
#fi

#nf-fa-arrow_right_long

if [[ $EUID == 0 ]] ; then
	PS1="$BLUE $MAGENTA\W $BLUE  $NORMAL"
else
	PS1="$GREEN $CYAN\W $GREEN  $NORMAL"
fi

#nf-fae-bigger

#if [[ $EUID == 0 ]] ; then
	#PS1="$BLUE $MAGENTA\W $BLUE $NORMAL"
#else
	#PS1="$GREEN $CYAN\W $GREEN $NORMAL"
#fi

#nf-fa-angle-right

#if [[ $EUID == 0 ]] ; then
	#PS1="$BLUE $MAGENTA\W $BLUE $NORMAL"
#else
	#PS1="$GREEN $CYAN\W $GREEN $NORMAL"
#fi

#nf-fa-angle_double_right
#if [[ $EUID == 0 ]] ; then
	#PS1="$BLUE $MAGENTA\W $BLUE  $NORMAL"
#else
	#PS1="$GREEN $CYAN\W $GREEN  $NORMAL"
#fi

#nf-fa-hand_point_right

#if [[ $EUID == 0 ]] ; then
	#PS1="$BLUE $MAGENTA\W $BLUE  $NORMAL"
#else
	#PS1="$GREEN $CYAN\W $GREEN  $NORMAL"
#fi

