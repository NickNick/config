set -gx SHELL fish
set -gx DFT_COLOR always
set -gx INSTA_TEST_RUNNER nextest
set -gx EDITOR hx

fish_add_path ~/bin
fish_add_path ~/.local/bin
fish_add_path ~/.cargo/bin

if status is-interactive
    starship init fish | source
    zoxide init fish | source
    fzf --fish | source
end
