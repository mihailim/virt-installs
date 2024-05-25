if [ "$PS1" ]; then
    parent=$(ps -o ppid= -p $$)
    name=$(ps -o comm= -p $parent)
    case "$name" in sshd|login) exec tmux ;; esac
fi
