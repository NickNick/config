config_dir="$HOME/config"

[ -d "$HOME/bin"                 ] && PATH="$HOME/bin:$PATH"
[ -d "$config_dir/bin"           ] && PATH="$config_dir/bin:$PATH"
[ -d "$HOME/.local/bin"          ] && PATH="$HOME/.local/bin:$PATH"
[ -d "$HOME/.cargo/bin"          ] && PATH="$HOME/.cargo/bin:$PATH"

[ -f "$HOME/.profile.local" ] && source "$HOME/.profile.local"

export _JAVA_AWT_WM_NONREPARENTING=1

