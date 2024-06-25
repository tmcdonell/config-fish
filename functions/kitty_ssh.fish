function kitty_ssh
  if [ "$TERM" = "xterm-kitty" ];
    echo "kitty +kitten ssh"
  else
    echo "ssh"
  end
end
