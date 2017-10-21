function :r
    for cmd in $history
        if [ $cmd != ":r" ]
            echo $cmd
            eval $cmd
            break
        end
    end
end
