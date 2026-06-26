check_zsh() { command -v zsh; }

check_font() {
  fc-list | grep -qi "JetBrainsMono Nerd Font"
}

check_btop() { command -v btop; }
check_rg() { command -v rg; }

sudo -v
source ~/dotfiles/shared/shell/check.sh
source ~/dotfiles/shared/shell/install.sh
source ~/dotfiles/linux/shared/shell/install.sh

printf "apt updating -> "
sudo apt update >/dev/null 2>&1
echo "updating complete"

check_install zsh
check_install nvim
check_install lazygit
check_install font
check_install ohmyzsh
check_install p10k
check_install autosuggestions
check_install syntax-highlighting
# check_install docker
check_install btop
check_install rg