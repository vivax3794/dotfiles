export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

fish_add_path "$HOME/.cargo/bin"

if status is-interactive
	# Commands to run in interactive sessions can go here
	# pip fish completion start
	function __fish_complete_pip
	    set -lx COMP_WORDS (commandline -o) ""
	    set -lx COMP_CWORD ( \
		math (contains -i -- (commandline -t) $COMP_WORDS)-1 \
	    )
	    set -lx PIP_AUTO_COMPLETE 1
	    string split \  -- (eval $COMP_WORDS[1])
	end
	complete -fa "(__fish_complete_pip)" -c pip
	# pip fish completion end

    # nodenv
    source (nodenv init -|psub) 

    # Verbose logging
    alias rm "rm -v"
    alias mv "mv -v"
    alias cp "cp -v"

    # Dont use the wrong vim
    alias vim "nvim"
    alias vi "nvim"
    alias v "nvim"

    # Stuff
    alias m "mold -run"

    # zellij
    alias zt "zellij action new-tab --layout"

    # Colors
    wal -R -e > /dev/null
end

# Created by `pipx` on 2023-01-18 19:33:59
fish_add_path "/home/vivax/.local/bin"

thefuck --alias | source
