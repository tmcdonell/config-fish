function sr --description "stack run -- [arguments]"
  stack build --ghc-options=-j -j8
  stack run -- $argv
end

