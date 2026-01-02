if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx TERMINAL kitty
set -gx EDITOR nvim

function mkcd
    mkdir -p $argv[1]; and cd $argv[1]
end

alias vim nvim

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if read -z cwd < "$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

starship init fish | source
