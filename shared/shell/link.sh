# ~/dotfiles/shared/link.sh
rm -f ~/.zshrc
rm -f ~/.zshenv
rm -f ~/.p10k.zsh

rm -rf ~/.config/nvim/lua
rm -f ~/.config/nvim/.neoconf.json
rm -f ~/.config/nvim/init.lua
rm -f ~/.config/nvim/lazyvim.json
rm -f ~/.config/nvim/stylua.toml
rm -f ~/.config/nvim/lazy-lock.json

SHARED_NVIM="$HOME/dotfiles/shared/nvim"
ln -sf "$SHARED_NVIM/lua"             ~/.config/nvim/lua
ln -sf "$SHARED_NVIM/.neoconf.json"   ~/.config/nvim/.neoconf.json
ln -sf "$SHARED_NVIM/init.lua"        ~/.config/nvim/init.lua
ln -sf "$SHARED_NVIM/lazyvim.json"    ~/.config/nvim/lazyvim.json
ln -sf "$SHARED_NVIM/stylua.toml"     ~/.config/nvim/stylua.toml
