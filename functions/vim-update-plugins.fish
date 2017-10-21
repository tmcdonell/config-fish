function vim-update
    set -lx SHELL (which bash)
    nvim +PlugUpgrade +PlugUpdate! +PlugClean!
end
