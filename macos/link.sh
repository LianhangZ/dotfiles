unlink ~/.zshrc
unlink ~/.zshenv
ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc
ln -sf ~/dotfiles/zsh/zshenv ~/.zshenv

unlink ~/.p10k.zsh
ln -sf ~/dotfiles/zsh/p10k.zsh ~/.p10k.zsh
unlink ~/.tmux.conf
ln -sf ~/dotfiles/shared/tmux/tmux.conf ~/.tmux.conf

unlink ~/.gitconfig
ln -sf ~/dotfiles/git/gitconfig ~/.gitconfig
# ln -sf ~/dotfiles/git/gitconfig-main ~/.gitconfig-main
# ln -sf ~/dotfiles/git/gitconfig-test1 ~/.gitconfig-test1

unlink ~/.config/nvim/lazy-lock.json
ln -sf ~/dotfiles/macos/nvim/lazy-lock.json ~/.config/nvim/lazy-lock.json