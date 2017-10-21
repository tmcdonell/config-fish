function se --description "se <command> [arguments]"
  set command $argv[1]
  set --erase argv[1]
  stack exec $command -- $argv
end

