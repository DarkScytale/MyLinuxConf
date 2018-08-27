# Exports {{{	
# }}}

# Configuring {{{
setopt autocd

# Use emacs keybindings even if our EDITOR is set to vi.
bindkey -e

# Use modern completing system.
autoload -Uz compinit
compinit
# }}}

# Prompt {{{
autoload -Uz promptinit
promptinit
prompt fire red magenta blue white white white
# }}}

# Aliases {{{
# -> System.
alias ls='ls --color'
alias ll='ls -lrt'
alias la='ls -a'
alias lla='ll -a'
alias ffind='find -type f'

# Tools.
alias tls='tmuxls'
alias topen='tmuxopen'
alias tnew='tmuxnew'
alias treload='tmux source-file ~/.tmux.conf'
alias zreload='source ~/.zshrc'

# Dev.
alias findpy='find . -name "*.py"'
alias dus='du -ch | sort -h'
alias dua='du -ach | sort -h'

# Post-aliases.
alias -g NULL='>/dev/null 2>&1'
# }}}

# History {{{
unset NO_BANG_HIST
setopt HIST_VERIFY
setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY
unset SHARE_HISTORY

HISTORY=5000
SAVEHIST=5000
HISTFILE=~/.zsh/.zsh_history
# }}}

# Tools Tmux {{{
function tmuxnew {
	tmux new -s $1
}

function tmuxls {
	tmux ls
}

function tmuxopen() {
	tmux attach -t $1
}

function tmuxkill() {
	tmux kill-session -t $1
}

function tmuxclean() {
	# Deletes all sessions with a single window which Id is a number.
	IFS=$'\';
	listSessions=($(tmux ls));
	for session in $listSessions;
	do
		sessionName=`echo $session | cut -d : -f l`;
		if [ -n "${sessionName}" ] && [ "$sessionName" = "${sessionName%%[!0-9]*}" ];
		then
			print "Session with number Id: $sessionName";
			nbFrame=`echo $session | cut -d\ -f 2`;
			print "Number of frames: $nbFrame";
		fi
		print "Session name: $sessionName";
		nbFrame=`echo $session | cut -d\ -f 2`;
		print "Nombre of frames: $nbFrame";
	done
}
# }}}

# Tools misc {{{
function findall() {
	find . -type f -name "*" -exec grep "$1" {} \; -print 2>/dev/null
}
# }}}

# Styling {{{
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

zstyle ':completion:*:cd:*' ignore-parents parent pwd
# }}}
