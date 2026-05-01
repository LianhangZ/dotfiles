if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

DOWNLOADS="$HOME/Downloads"
DOTFILES="$HOME/dotfiles"
LIANHANGZ="$HOME/LianhangZ"
ICLOUD="$HOME/Library/Mobile Documents/com~apple~CloudDocs"
OBSIDIAN="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents"
export PATH=/opt/homebrew/bin:$PATH
export OH_MY_ZSH="$HOME/.oh-my-zsh"
export P10K="$HOME/.p10k.zsh"
ZSH_THEME="powerlevel10k/powerlevel10k" # See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $OH_MY_ZSH/oh-my-zsh.sh
source $P10K # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.


alias rf='rm -rf'
alias cl='clear && printf "\e[3J"'


alias rb='git rebase -i --root'
alias p='git push'
alias pf='git push -f'
alias st='git status -sb'
alias stash='git stash -ku'
alias pop='git stash pop'
# git rebase --abort
# git rebase --continue
# git reset HEAD^
alias gcun="printf \"name: \" && git config user.name"
alias gcue="printf \"email: \" && git config user.email"

# git config --global user.name "name"
# git config --global user.email "email"

# git config --global --list


PGHOME=$HOME/pgsql                  # ~/pgsql
export PGDATA=$PGHOME/data          # ~/pgsql/data
export PGHOST="localhost"
export PGPORT=5432
export LD_LIBRARY_PATH=$PGHOME/lib  # ~/pgsql/lib
export PATH=$PGHOME/bin:$PATH       # ~/pgsql/bin

alias psu="pg_ctl status"
alias psp="$PGHOME/bin/pg_ctl stop"
alias pst="$PGHOME/bin/pg_ctl -l $PGDATA/log start"
alias pls="psql -l" # list of databases


JUPYTER_KERNELS="$HOME/Library/Jupyter/kernels/"

init_venv() {
  python3 -m venv .venv || return 1
  source .venv/bin/activate || return 1
  python -m pip install --upgrade pip || return 1
  # python -m pip install opencv-python numpy matplotlib ipykernel || return 1
}

delete_venv() {
  deactivate
  rm -rf .venv
}

deregister_venv() {
  if [[ -z "$1" ]]; then
    cd "$JUPYTER_KERNELS" || return 1
  else
    rm -rf "$JUPYTER_KERNELS/$1" || return 1   # ~/Library/Jupyter
  fi
}

_deregister-venv_completion() {
  _files -W "$JUPYTER_KERNELS" -/
}

compdef _deregister-venv_completion deregister_venv

show_venv() {
  for d in "$JUPYTER_KERNELS"/*; do
    if [[ -f "$d"/kernel.json ]]; then
      kernel_name=$(basename "$d")
      kernel_path=$(grep -m1 '"argv"' -A 1 "$d/kernel.json" | tail -n1 | sed 's/[", ]//g')
      echo "$kernel_name -> $kernel_path"
    fi
  done
}


alias mc="make clean"
alias mb="make build"
# alias md="make debug" # "mkdir -p"
# alias mt="make test"


alias t="printf \"%s\n\" tl ta td tn tk | xargs printf \"%-8s\" && echo"
alias tl="tmux ls"
alias ta="tmux attach -t"
alias td="tmux detach"
alias tn="tmux new -s"          # new session
alias tk="tmux kill-session -t" # specify target session
# tmux source-file ~/.tmux.conf
