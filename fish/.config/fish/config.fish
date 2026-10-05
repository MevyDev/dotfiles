function fish_greeting
end

set -gx TERMINAL kitty
set -gx EDITOR nvim

function mkcd
    mkdir -p $argv[1]; and cd $argv[1]
end

# Check for existence
if type -q nvim
    alias vim nvim
end
if type -q bat
    alias cat bat
end
if type -q lsd
    alias ls lsd
end
if type -q lsd
    alias tree "lsd --tree"
end

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

# ZVM
set -gx ZVM_INSTALL "$HOME/.zvm/self"
set -gx PATH $PATH "$HOME/.zvm/bin"
set -gx PATH $PATH "$ZVM_INSTALL/"

set -gx PATH "/home/mevy/.pixi/bin" $PATH
