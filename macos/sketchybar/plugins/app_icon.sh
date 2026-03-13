#!/bin/sh

app_icon() {
  case "$1" in
    "Activity Monitor") printf "󰔟" ;;
    "AeroSpace") printf "󰀻" ;;
    "App Store") printf "󰀻" ;;
    "Calendar"|"Notion Calendar") printf "󰃭" ;;
    "ChatGPT") printf "󰭹" ;;
    "Code"|"Visual Studio Code") printf "󰨞" ;;
    "Codex") printf "" ;;
    "Discord") printf "󰙯" ;;
    "Docker"|"Docker Desktop") printf "󰡨" ;;
    "Finder") printf "󰀶" ;;
    "Firefox") printf "󰈹" ;;
    "Google Chrome") printf "󰊯" ;;
    "iTerm2"|"Terminal"|"WezTerm") printf "󰆍" ;;
    "Mail"|"Microsoft Outlook") printf "󰇮" ;;
    "Microsoft Excel") printf "󱎏" ;;
    "Microsoft PowerPoint") printf "󱎐" ;;
    "Microsoft Teams") printf "󰊻" ;;
    "Microsoft Word") printf "󱎒" ;;
    "Messages") printf "󰍡" ;;
    "Music") printf "󰝚" ;;
    "Notion") printf "" ;;
    "Obsidian") printf "󰠮" ;;
    "Preview") printf "󰋩" ;;
    "Safari") printf "󰀹" ;;
    "Spotify") printf "󰓇" ;;
    "System Settings") printf "󰒓" ;;
    "Xcode") printf "󰀵" ;;
    "zoom.us") printf "󰕧" ;;
    *) printf "󰣆" ;;
  esac
}
