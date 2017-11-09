function fish_right_prompt --description 'Show command duration'
  [ -z "$CMD_DURATION" -o "$CMD_DURATION" -lt 100 ]; and return

  # We should probably also skip this if this is the first line

  # Move the cursor up two lines. The left-hand prompt includes a space after
  # the last command and places the prompt on a new line.
  echo -ne "\033[2A"

  set_color $fish_color_autosuggestion
  if [ "$CMD_DURATION" -lt 5000 ]
    echo -ns $CMD_DURATION ms
  else if [ "$CMD_DURATION" -lt 60000 ]
    __pretty_ms $CMD_DURATION s
  else if [ "$CMD_DURATION" -lt 3600000 ]
    __pretty_ms $CMD_DURATION m
  else
    __pretty_ms $CMD_DURATION h
  end
  set_color $fish_color_normal

  # Move the cursor back to the prompt line
  echo -ne "\033[2B"
end

function __pretty_ms -S -a ms interval -d 'Millisecond formatting for humans'
  set -l interval_ms
  set -l scale 1

  switch $interval
    case s
      set interval_ms 1000
    case m
      set interval_ms 60000
    case h
      set interval_ms 3600000
      set scale 2
  end

  switch $FISH_VERSION
    # Fish 2.3 and lower doesn't know about the -s argument to math.
    case 2.0.\* 2.1.\* 2.2.\* 2.3.\*
      math "scale=$scale;$ms/$interval_ms" | string replace -r '\\.?0*$' $interval
    case \*
      math -s$scale "$ms/$interval_ms" | string replace -r '\\.?0*$' $interval
  end
end

