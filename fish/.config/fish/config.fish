if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -Ux TERMINAL alacritty

starship init fish | source
