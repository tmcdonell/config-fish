function se --description "stack exec <command> -- [arguments]"
  set command $argv[1]
  set --erase argv[1]
  stack exec $command -- $argv
end

