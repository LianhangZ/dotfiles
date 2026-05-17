chsh -s $(which zsh)

RUNZSH=no CHSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k


install_font() {
    mkdir -p ~/.local/share/fonts
    cd ~/.local/share/fonts

    wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.zip

    sudo apt install -y unzip
    unzip JetBrainsMono.zip -d JetBrainsMono
    fc-cache -fv
}

install_font


ln -sf ~/dotfiles/ubuntu/zshrc ~/.zshrc

unlink ~/.config/nvim/lazy-lock.json
ln -sf ~/dotfiles/ubuntu/nvim/lazy-lock.json ~/.config/nvim/lazy-lock.json

bash ~/dotfiles/shared/link.sh
