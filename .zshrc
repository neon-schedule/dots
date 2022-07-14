export XDG_CONFIG_HOME=$HOME/.config
export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$HOME/bin:/usr/local/bin:$HOME/go/bin:/opt:/usr/local/go/bin:$PATH

zstyle :omz:plugins:ssh-agent identities tbu yadm

export ZSH="$HOME/.oh-my-zsh"

PROMPT='%{$fg_bold[gray]%}%~%{$fg_bold[blue]%}%{$fg_bold[blue]%} % %{$reset_color%}
%{$fg[green]%}> %{$reset_color%'

RPROMPT='$(git_prompt_info) $(ruby_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}] %{$fg[red]%}✖ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}] %{$fg[green]%}✔%{$reset_color%}"
ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_RUBY_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}] %{$fg[red]%}✖ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}] %{$fg[green]%}✔%{$reset_color%}"
ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_RUBY_PROMPT_SUFFIX="]%{$reset_color%}"

plugins=(git ssh-agent)

source $ZSH/oh-my-zsh.sh

alias vim="nvim"
alias c="xclip -selection c"
alias ci="xclip -selection clipboard -t image/png -in"
alias update="~/.scripts/update"
alias full-update="~/.scripts/full-update"
alias cat="batcat -pp"
alias z="zathura"
alias r="ranger"
alias e="swallow evince"
alias z="swallow zathura"
