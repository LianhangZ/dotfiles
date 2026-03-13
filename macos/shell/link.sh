# ~/dotfiles/macos/shell/link.sh
source ~/dotfiles/shared/shell/logging.sh
source ~/dotfiles/shared/shell/check.sh
bash ~/dotfiles/shared/shell/link.sh

rm -f ~/.wezterm.lua
rm -f ~/.tmux.conf
rm -f ~/.gitconfig

ln -sf ~/dotfiles/macos/zsh/zshrc     ~/.zshrc
ln -sf ~/dotfiles/macos/zsh/zshenv    ~/.zshenv
ln -sf ~/dotfiles/macos/zsh/p10k.zsh  ~/.p10k.zsh
ln -sf ~/dotfiles/macos/nvim/lazy-lock.json \
  ~/.config/nvim/lazy-lock.json
ln -sf ~/dotfiles/macos/wezterm.lua   ~/.wezterm.lua
ln -sf ~/dotfiles/shared/tmux.conf    ~/.tmux.conf
ln -sf ~/dotfiles/macos/git/gitconfig ~/.gitconfig

bash ~/dotfiles/shared/check_link.sh

check_link "$HOME/.wezterm.lua"
check_link "$HOME/.tmux.conf"
check_link "$HOME/.gitconfig"
