# vim: nospell

set -x LANG "en_AU.UTF-8"

set -x LESS_TERMCAP_mb (printf "\033[01;31m")
set -x LESS_TERMCAP_md (printf "\033[01;31m")
set -x LESS_TERMCAP_me (printf "\033[0m")
set -x LESS_TERMCAP_se (printf "\033[0m")
set -x LESS_TERMCAP_so (printf "\033[01;44;33m")
set -x LESS_TERMCAP_ue (printf "\033[0m")
set -x LESS_TERMCAP_us (printf "\033[01;32m")

set -x MANPAGER "nvim -c 'set filetype=man nospell' -"
set -x EDITOR (which nvim)

set -x fish_color_status red
set -x fish_color_host   red
set -x fish_color_cwd    purple

# gnuplot is broken
# https://gitlab.gnome.org/GNOME/pango/issues/422
#
set -x fish_user_paths                           \
  .                                              \
  $HOME/.local/bin                               \
  $HOME/.cargo/bin                               \
  $HOME/Library/Python/3.7/bin                   \
  $HOME/.gem/ruby/2.3.0/bin                      \
  /usr/local/anaconda3/bin                       \
  /usr/local/homebrew/bin                        \
  /usr/local/homebrew/sbin                       \
  /usr/local/homebrew/opt/gnu-tar/libexec/gnubin
  # /usr/local/homebrew/opt/binutils/bin

# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# Nix
# requires https://github.com/oh-my-fish/plugin-foreign-env
if test -e "$HOME/.nix-profile/etc/profile.d/nix.sh"
  fenv source "$HOME/.nix-profile/etc/profile.d/nix.sh"
end

