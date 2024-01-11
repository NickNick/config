function hx
  if command -q hx
    # Use command again because otherwise we would execute this function.
    command hx $argv;
  else if command -q helix
    command helix $argv;
  else
    echo "Neither hx nor helix found"
  end
end
