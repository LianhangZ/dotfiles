alias test-alias="echo test"

alias home='cd ~'
alias dot='cd $DOTFILES'

alias lg="lazygit"
alias nv='nvim .'
# du  # disk usage
# alias rf='rm -rf'

# alias p='git push'
alias pf='git push -f'
# alias st='git status -sb'
# alias stash='git stash -ku'
# alias pop='git stash pop'
alias rb='git rebase -i --root'
# git rebase --abort
# git rebase --continue
# git reset HEAD^
# git config user.name
# git config user.email
# git config pull.rebase true               # current repo
# git config -global pull.rebase ture       # all repos
# git config --global user.name "name"
# git config --global user.email "email"
# git config --global --list
# git remote -v
# git remote set-url origin git@github-main:LianhangZ/dotfiles.git
# git clone git@github-test1:test-lz1/test-group
# git clone git@github-main:LianhangZ/test-group

# gh ssh-key add ~/.ssh/id_ed25519.pub
# gh ssh-key add ~/.ssh/id_ed25519.pub --title "MacBook Air" --type authentication
# gh auth status
# gh auth login
# gh auth switch
# gh repo add-collaborator test-lz1/test-group --user LianhangZ
# echo $PAGER

# ssh -vT github-main # git@github.com
# ssh-copy-id -i ~/.ssh/id_ed25519.pub parallels@10.211.55.10
# scp lianhang@192.168.64.10:~/.ssh/id_ed25519.pub ~/Desktop/ubuntu_id_ed25519.pub

alias mc="make clean"
alias mb="make build"
# alias md="make debug" # "mkdir -p"
# alias mt="make test"

# alias t="printf \"%s\n\" tl ta td tn tk | xargs printf \"%-8s\" && echo"
alias t="tmux"
alias tl="t ls"
# alias ta="tmux attach -t"
# alias td="tmux detach"
# alias tn="tmux new -s"          # new session
alias tk="tmux kill-session -t" # specify target session
# tmux source-file ~/.tmux.conf

alias pg="pg_ctl"
# alias psu="pg_ctl status"
# alias pst="$PGHOME/bin/pg_ctl -l $PGDATA/log start"
# alias psp="$PGHOME/bin/pg_ctl stop"

# psql -l # list of databases
