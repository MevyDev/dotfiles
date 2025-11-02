if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -Ux TERMINAL kitty

function mkcd
    mkdir -p $argv[1]; and cd $argv[1]
end

alias vim nvim

starship init fish | source
