# vim: nospell

set -x LESS_TERMCAP_mb (printf "\033[01;31m")
set -x LESS_TERMCAP_md (printf "\033[01;31m")
set -x LESS_TERMCAP_me (printf "\033[0m")
set -x LESS_TERMCAP_se (printf "\033[0m")
set -x LESS_TERMCAP_so (printf "\033[01;44;33m")
set -x LESS_TERMCAP_ue (printf "\033[0m")
set -x LESS_TERMCAP_us (printf "\033[01;32m")

set -x MANPAGER "nvim -c 'set filetype=man nospell' -"

# test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# Nix
# requires https://github.com/oh-my-fish/plugin-foreign-env
if test -e "$HOME/.nix-profile/etc/profile.d/nix.sh"
  fenv source "$HOME/.nix-profile/etc/profile.d/nix.sh"
end

