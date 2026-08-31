#!/bin/sh

app_icon() {
  case "$1" in
    "Activity Monitor") printf "󰓅" ;;
    "AeroSpace"|"App Store") printf "󰀻" ;;
    "Anki") printf "󰘸" ;;
    "Calendar"|"Notion Calendar") printf "" ;;
    "Code"|"Visual Studio Code") printf "󰨞" ;;
    "ChatGPT") printf "󱙺" ;;
    "Dictionary") printf "" ;;
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
    "Parallels Desktop") printf "󰟀" ;;
    "Photos") printf "" ;;
    "Preview") printf "" ;;
    "Reminders") printf "" ;;
    "Safari") printf "󰀹" ;;
    "Spotify") printf "󰓇" ;;
    "Steam Helper") printf "" ;;
    "System Settings") printf "󰒓" ;;
    "TV") printf "" ;;
    "Voice Memos") printf "" ;;
    "WeChat") printf "󱋊" ;;
    "Xcode") printf "󰀵" ;;
    "zoom.us") printf "󰕧" ;;
    "Zotero") printf "" ;;
    *) printf "󰣆" ;;
  esac
}
