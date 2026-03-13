unlink ~/.config/nvim/lua
unlink ~/.config/nvim/.neoconf.json
unlink ~/.config/nvim/init.lua
unlink ~/.config/nvim/lazyvim.json
unlink ~/.config/nvim/stylua.toml
SHARED_NVIM="$HOME/dotfiles/shared/nvim"
ln -sf "$SHARED_NVIM/lua"                       ~/.config/nvim/lua
ln -sf "$SHARED_NVIM/.neoconf.json"             ~/.config/nvim/.neoconf.json
ln -sf "$SHARED_NVIM/init.lua"                  ~/.config/nvim/init.lua
ln -sf "$SHARED_NVIM/lazyvim.json"              ~/.config/nvim/lazyvim.json
ln -sf "$SHARED_NVIM/stylua.toml"               ~/.config/nvim/stylua.toml
