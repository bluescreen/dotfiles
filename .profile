arm() {
      arch -x86_64 $@
  }

code() {
      code-exploration $@
  }

export USER=''
prompt_context() {
      if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
              prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
                fi
            }
export ZSH_THEME="gruvbox"
export SOLARIZED_THEME="dark"
export TERM=screen-256color
export PATH=$HOME/bin:/opt/homebrew/bin:/usr/local/bin:$PATH
export PATH=${PATH}:~/.composer/vendor/bin
export PATH=${PATH}:~/.npm-global/bin:$PATH
export PATH="$(npm bin -g):$PATH"
export PATH=${PATH}:/Users/markusmuschol/Library/Python/3.9/bin

export FZF_DEFAULT_COMMAND='rg --files'
export FZF_DEFAULT_OPTS='--no-height --border --preview="cat {}" --color=bg+:#343d46,gutter:-1,pointer:#ff3c3c,info:#0dbc79,hl:#0dbc79,hl+:#23d18b'

export GOPATH=$HOME/gocode
alias rsd="brew services restart spotifyd"
alias v="vim"
alias play='f() {mpv "https://www.youtube.com/watch?list=$1" --volume="50" --no-video --ontop --shuffle};f'
alias spotify='brew services restart spotifyd; spt'
alias tmux="tmux -2"
alias work="tmux a -t work"
alias ctags="`brew --prefix`/bin/ctags"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
