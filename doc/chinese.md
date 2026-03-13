[ps(1) — Linux manual page (Process Status)](https://man7.org/linux/man-pages/man1/ps.1.html)
- `-o` User-defined Format, etc. ✅ ✅ ✅ ✅ ✅ `-o pid,ppid,tty,stat,etime`.
  - `STAT` (Status): `S` `Ss` `Ss+`
    - `S` sleep;
    - `s` session leader, etc. `Ss`;
    - `+` foreground process group, etc. `Ss+`.
  - `TTY` 属于哪个终端 etc. `tty1` local; `pts/0`, `pts/1` pseudo terminal slave.
  - `etime` (`ELAPSED`) etc. `26-10:50:08` 26D-10H:50Min:05Sec.
  - `PPID` etc. `1` 被`systemd/init`接管.
- `-C` Select by command name, etc. `-C zsh`.

- Pi 以自定义格式查找指定名称的线程信息 ✅ `ps -o pid,ppid,tty,stat -C zsh`
- Pi 查所有程序PID ✅ `ps aux` ;
- Pi 查看特定程序的PID ✅ `pgrep -p <process_name>` ;
- Pi 查看当前Shell的PID ✅ `echo $$`
- Wezterm 全屏 ✅ `option + Enter`
- Wezterm: New Window ✅ `cmd+N`; Close ✅ `cmd+W`
- Wezterm 隐藏下栏 ✅ `option+command+D`
- Wezterm 删除整行 ✅ `ctrl-u`
- Neovim 跳到: 首行 ✅ `gg`; 末行 ✅ `G`
- Neovim 左右分屏 ✅ `:vs`; 上下分屏 ✅ `:sp` (split); 切换分屏 ✅ `ctrl-h/l` ; 退出 ✅ `:q`.
- Neovim 有没有类似which-key的东西可以提醒`:vs`, `:%s\old\new` ❓ Noise.
- Neovim ✅ `/` or `?`, ✅ `n` next, ✅ `N` previous, `esc`
- Neovim 多行注释 ✅ `v`, `gc`.
- Neovim ✅ `2j`, `3k`, `4l`, `5h`.
- Neovim ✅ `:new` `:put =execute('verbose nmap <leader>fg')`
- Neovim ✅ `c`, ✅ `cw`, ✅ `:help c`
- Neovim ✅ `:e!`; ✅ `:e`
- Neovim ✅ `:Lazy reload which-key.lua`
- Neovim ✅ `opt+j` ✅ `opt+k`
- 打开emoji表 `ctrl+cmd+space`: ✅ `checkmark` or `tick`, ❌ `x` or `cross mark` ; 选择 ✅ `Enter+Right/Left/Up/Down`
- Setting -> Keyboard -> ✅ Key Repeat Rate & Delay until Repeat

- 缺少分号 `syntax error near unexpected token`

- 互换`fn`和`ctrl`键: Setting -> Keyboard -> Keyboard Shortcuts -> Modifier ✅

# Features

- Basic features: `sh-H/L` - *switch* buffer leftword/rightword.

# LazyGit

- In **Files** panel: 
    - `space` - *stage* modified files; 
    - `d` - *discord* changes.
- In **Local branches** panel: 
    - `sh-P` - *push* & force push; 
    - `p` - *pull*
- In **Commits** panel: `r` - rename message; `s` - *squash*.

# Snacks

- `<leader>f` Floating Terminal.
- `<leader>e` Explorer: 
    - `a` - *add* a file or folder, e.g. `a newfolder/`; 
    - `r` - *rename* a file or folder;
    - `d` - *delete* a file or folder.
