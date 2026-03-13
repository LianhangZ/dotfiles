# dotfiles

![demo](doc/asset/nvim_dotfiles.png)

## Install

```shell
git clone https://github.com/LianhangZ/dotfiles.git ~/dotfiles
```

Then in `~/dotfiles`, run:

```shell
cd ~/dotfiles/macos/ && chmod +x *.sh && ./bootstrap.sh
```

## Features

- Basic features: `sh-H/L` - *switch* buffer leftword/rightword.
- **Alias**: `rb` - *rebase* commits; `cl` - *clear*.
- `gitsigns`: `<leader>rh`: *reset* hunk; `<leader>rb`: *reset* buffer; `<leader>hi`: *highlight* hunk.

### LazyGit

- In **Files** panel, `space` - *stage* modified files; `d` - *discord* changes.
- In **Local branches** panel, `sh-P` - *push* & force push.
- In **Commits** panel, `r` - rename message; `s` - *squash*.

**Shortage**: Cannot modify the order of commits.

### Snacks

- `<leader>f` Floating Terminal.
- `<leader>e` Explorer: `a` - *add*; `r` - *rename*; `d` - *delete*.
