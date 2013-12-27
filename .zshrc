# .bashrc
PATH=${PATH}:/usr/local/bin

# User specific aliases and functions

alias v='vim'
alias vi='vim'
alias rm='rm'
alias cp='cp'
alias mv='mv'
alias ls='ls -lF'
alias la='ls -al'
alias mkdir='mkdir -p'
alias f='find'
alias gco="git checkout"
alias gst="git status"
alias gct="git commit -a -m"
alias gdi="git diff"
alias gbr="git branch"
alias gad="git add"
alias gpu="git push"
alias gpl="git pull"
alias grv="git revert"
alias grm="git rm"
alias gft="git fetch"
alias gmg="git merge"
alias glg="git log"
alias gdf="git diff"
alias gpuom="git push origin master"
alias caps="cap staging deploy"
alias capp="cap production deploy"
alias tm="tmux -2"
alias ps="ps aux"
alias be="bundle exec"
alias rgm="bundle exec rails g migration"
alias rake="bundle exec rake"

# Source global definitions
if [ -f /etc/zshrc ]; then
	. /etc/zshrc
fi

# key bind
#bindkey -e
#bindkey "^?"    backward-delete-char
#bindkey "^H"    backward-delete-char
#bindkey "^[[3~" delete-char
#bindkey "^[[1~" beginning-of-line
#bindkey "^[[4~" end-of-line

# Auto complete
#autoload -Uz compinit
#compinit

# histories
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

export LANG=ja_JP.UTF-8

# Enable to read japanese
#setopt print_eight_bit

# Unable flow control
#setopt no_flow_control

# Comment out after # option
#setopt interactive_comments

# Display path to right
#PROMPT="%m:%n%# "
#PROMPT="$PROMPT"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
#RPROMPT="[%~]"
