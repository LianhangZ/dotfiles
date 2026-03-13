# ~/dotfiles/shared/shell/logging.sh
install_successfully_message() {
    echo "-> install successfully"
}

install_fail_message() {
    echo "-> install failed"
}

install_already_message() {
    echo "$1 ALREADY installed"
}

installing_message() {
    printf "installing $1 "
}

get_log_path() {
    echo "$HOME/dotfiles/log/install_$1.log"
}
