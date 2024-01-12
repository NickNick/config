set -gx SHELL fish
set -gx DFT_COLOR always
set -gx INSTA_TEST_RUNNER nextest

if status is-interactive
    starship init fish | source
    set -gx EDITOR hx
end
