function gg --description "ghcid --command='stack ghci' [module]"
  if test (count $argv) -eq 1; and test -f "$argv[1]"
    ghcid --command="stack ghci --no-load --no-build --ghci-options $argv"
  else
    ghcid --command="stack ghci $argv"
  end
end

