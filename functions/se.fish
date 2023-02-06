function se --description "stack exec <command> -- [arguments]"
    set command $argv[1]
    set --erase argv[1]
    if [ "$TERM" = "xterm-kitty" ];
        kitty @ set-window-title $command
    end
    stack exec $command -- $argv
    if [ "$TERM" = "xterm-kitty" ];
        kitty @ set-window-title
    end
end

