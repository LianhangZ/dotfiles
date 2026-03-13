# ~/dotfiles/shared/check_link.sh
source ~/dotfiles/shared/shell/logging.sh
source ~/dotfiles/shared/shell/check.sh

check_link "$HOME/.zshrc"
check_link "$HOME/.zshenv"
check_link "$HOME/.p10k.zsh"

# ls -al ~/.config/nvim/
check_link "$HOME/.config/nvim/lua"
check_link "$HOME/.config/nvim/init.lua"
check_link "$HOME/.config/nvim/.neoconf.json"
check_link "$HOME/.config/nvim/lazyvim.json"
check_link "$HOME/.config/nvim/stylua.toml"
check_link "$HOME/.config/nvim/lazy-lock.json"
