function e
    if [ "$TERM" = "xterm-kitty" ];
        kitty @ set-window-title (basename $EDITOR)
    end
    eval $EDITOR $argv
    if [ "$TERM" = "xterm-kitty" ];
        kitty @ set-window-title
    end
end

