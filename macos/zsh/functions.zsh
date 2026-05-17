BLUE="\033[34m"
YELLOW="\033[33m"
GREEN="\033[32m"
RED="\033[31m"
RESET="\033[0m"


check() {
  # local var_name="$1"
  # local value="${(P)var_name}"
  if [[ -n "$1" ]]; then
    if [[ -d "$1" ]]; then
      echo -e "${YELLOW}$1 ${GREEN}exists${RESET}"
    else
      echo -e "${YELLOW}$1 ${RED}unexist${RESET}"
    fi
  else
    # local var_name="$1"
    # local value="${(P)var_name}"
    echo -e "${RED}undefined${RESET} var"
  fi
}


# clone () {
#   local account="$1"
#   local repo="$2"
#   case "$account" in
#     main)
#       git clone "git@github-main:LianhangZ/$repo"
#       ;;
#     test1)
#       git clone "git@github-test1:test-lz1/$repo"
#       ;;
#   esac
# }

# _clone_accounts() {
#   local -a accounts
#   accounts=(
#     'main:Main GitHub account'
#     'test:Test GitHub account'
#   )

#   _describe 'account' accounts
# }

# compdef _clone_accounts clone

# _clone() {
#   local state

#   _arguments \
#     '1:account:(main test)' \
#     '2:repo:->repos'

#   case $state in
#     repos)
#       if [[ $words[2] == main ]]; then
#         compadd dotfiles dbms-final myapp
#       elif [[ $words[2] == test ]]; then
#         compadd test-group playground
#       fi
#       ;;
#   esac
# }

# compdef _clone clone

# typeset -A GIT_USERS

# GIT_USERS=(
#     main "git@github-main:LianhangZ"
#     test "git@github-test1:test-lz1"
# )

# clone() {
#     local account="$1"
#     local repo="$2"

#     if [[ -z "${GIT_USERS[$account]}" ]]; then
#         echo "Unknown account: $account"
#         return 1
#     fi

#     git clone "${GIT_USERS[$account]}/$repo"
# }


init_venv() {
  python3 -m venv .venv || return 1
  source .venv/bin/activate || return 1
  python -m pip install --upgrade pip || return 1
  # python -m pip install opencv-python numpy matplotlib ipykernel || return 1
}

delete_venv() {
  deactivate
  rm -rf .venv
}

deregister_venv() {
  if [[ -z "$1" ]]; then
    cd "$JUPYTER_KERNELS" || return 1
  else
    rm -rf "$JUPYTER_KERNELS/$1" || return 1   # ~/Library/Jupyter
  fi
}

_deregister-venv_completion() {
  _files -W "$JUPYTER_KERNELS" -/
}

compdef _deregister-venv_completion deregister_venv

show_venv() {
  for d in "$JUPYTER_KERNELS"/*; do
    if [[ -f "$d"/kernel.json ]]; then
      kernel_name=$(basename "$d")
      kernel_path=$(grep -m1 '"argv"' -A 1 "$d/kernel.json" | tail -n1 | sed 's/[", ]//g')
      echo "$kernel_name -> $kernel_path"
    fi
  done
}
