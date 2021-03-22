function sb --description "stack build [arguments]"
  stack build --jobs=8 $argv
  # stack build --ghc-options="-j4 +RTS -N -A128M -n4m -RTS" --jobs=4 $argv
end

