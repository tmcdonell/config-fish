function fish_prompt --description 'Write out the prompt'

   if not set -q __fish_prompt_hostname
       set -g __fish_prompt_hostname (hostname -s)
   end

   if not set -q __fish_prompt_normal
       set -g __fish_prompt_normal (set_color normal)
   end

   if not set -q __fish_prompt_host
       set -g __fish_prompt_host (set_color $fish_color_host)
   end

   if not set -q __fish_prompt_cwd
       set -g __fish_prompt_cwd (set_color $fish_color_cwd)
   end

   echo ''
   echo -n -s "$__fish_prompt_host" "$USER" @ "$__fish_prompt_hostname" "$__fish_prompt_normal" ' '
   echo -n -s "$__fish_prompt_cwd" (prompt_pwd) (__fish_git_prompt) "$__fish_prompt_normal"
   echo -e '\n> '

end
