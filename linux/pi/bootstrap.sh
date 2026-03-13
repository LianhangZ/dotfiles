set -e; sudo -v

mkdir -p ~/.config/nvim

bash ~/dotfiles/linux/shared/shell/check.sh

git config --global user.name "Lianhang Zhang"
git config --global user.email "148300543+LianhangZ@users.noreply.github.com"

bash ~/dotfiles/linux/pi/link.sh

# chsh -s $(which zsh)
if [ -n "$CI" ]; then
    echo "CI detected, skip chsh"
else
    chsh -s "$(command -v zsh)"
fi
