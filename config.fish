# vim: nospell

set -x LANG "en_AU.UTF-8"

set -x LESS_TERMCAP_mb (printf "\033[01;31m")
set -x LESS_TERMCAP_md (printf "\033[01;31m")
set -x LESS_TERMCAP_me (printf "\033[0m")
set -x LESS_TERMCAP_se (printf "\033[0m")
set -x LESS_TERMCAP_so (printf "\033[01;44;33m")
set -x LESS_TERMCAP_ue (printf "\033[0m")
set -x LESS_TERMCAP_us (printf "\033[01;32m")

# set -U fish_color_status red
# set -U fish_color_host   red
# set -U fish_color_cwd    purple
# set -U tide_character_color normal

fish_add_path -g /usr/local/bin
fish_add_path -g /opt/homebrew/bin
fish_add_path -g $HOME/.ghcup/bin
fish_add_path -g $HOME/.local/bin
# fish_add_path -g .

if which swiftenv > /dev/null; status --is-interactive; and source (swiftenv init -|psub); end

set -x MANPAGER "nvim +Man!"
set -x MANWIDTH "tty"
set -x EDITOR nvim
set -x PKG_CONFIG_PATH $HOME/.local/lib/pkgconfig
set -x LS_COLORS (vivid generate gruvbox-light)

# Install fisher plugins in a separate subdirectory
set fisher_path "$__fish_config_dir/fisher"
set fish_complete_path $fisher_path/completions $fish_complete_path
set fish_function_path $fisher_path/functions $fish_function_path
for conf in $fisher_path/conf.d/*.fish
  source $conf
end

# Abbreviations
abbr --add dotdot --regex '^\.\.+$' --function multicd
abbr --add !! --position anywhere --function last_history_item
abbr --add ssh --function kitty_ssh
abbr --add :r --function last_history_item
abbr --add e $EDITOR
abbr l ls
abbr cp cp -i
abbr rm rm -i
abbr mv mv -i
# abbr gt ghcid --command='stack ghci' --test=':!stack build'
# abbr sb stack build --jobs=8 -ghc-options="-j8 +RTS -N -A128M -n4m -RTS"
# abbr sc stack clean
# abbr sg stack ghci

# set -x FZF_DEFAULT_COMMAND 'fd --type file'
# set -x FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND
# set -x FZF_DEFAULT_OPTS '--color=fg:-1,fg+:#d0d0d0,bg:-1,bg+:#e0e0e0
#   --color=hl:#4271ae,hl+:#5fd7ff,info:#eab700,marker:#3e999f
#   --color=prompt:#eab700,spinner:#3e999f,pointer:#3e999f,header:#4271ae
#   --color=border:#262626,label:#aeaeae,query:#d9d9d9
#   --border="rounded" --border-label="" --preview-window="border-rounded" --prompt="> "
#   --marker=">" --pointer="◆" --separator="─" --scrollbar="│"'
set -x FZF_DEFAULT_OPTS '--cycle --layout=reverse --color=light --border --height=90% --preview-window=wrap --marker="*"'
fzf_configure_bindings --directory=\ct

