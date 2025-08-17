if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -Ux TERMINAL alacritty

function mkcd
    mkdir -p $argv[1]; and cd $argv[1]
end

starship init fish | source
