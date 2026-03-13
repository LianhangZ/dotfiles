set -e
sudo -v || exit 1
mkdir -p ~/dotfiles/macos/log
mkdir -p ~/.config/nvim

bash ~/dotfiles/macos/shell/check.sh
bash ~/dotfiles/macos/shell/link.sh

# if [ ! -f ~/.ssh/github_test1 ]; then
#     ssh-keygen -t ed25519 -C "test-lz1" -f ~/.ssh/github_test1 -N ""
# fi

# if [ ! -f ~/.ssh/github_main ]; then
#     ssh-keygen -t ed25519 -C "LianhangZ" -f ~/.ssh/github_main -N ""
# fi

echo "bootstrap COMPLETE"
