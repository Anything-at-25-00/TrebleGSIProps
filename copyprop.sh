copyprop() {
    p="$(getprop "$2")"
    if [ "$p" ]; then
        resetprop "$1" "$(getprop "$2")"
    fi
}