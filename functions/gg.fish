function gg --description "ghcid --command='stack ghci' [module]"
  if test (count  $argv) -gt 0
    ghcid --command="stack ghci --no-load --no-build --ghci-options $argv"
  else
    ghcid --command="stack ghci"
  end
end

