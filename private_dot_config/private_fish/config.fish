if status is-interactive
    # Commands to run in interactive sessions can go here
end

# add to my path
fish_add_path ~/.local/bin

/usr/bin/mise activate fish | source
starship init fish | source
zoxide init fish | source

# local scripts ex tmux sessionizer
set PATH "$PATH":"$HOME/.local/scripts/"
bind \cf herdr-switcher
bind -M insert \cf herdr-switcher
bind -M normal \cf herdr-switcher
bind -M visual \cf herdr-switcher
fish_vi_key_bindings --no-erase
# cargo
set PATH "$PATH":"$HOME/.cargo/bin"

# pulumi
set PATH "$PATH":"$HOME/.pulumi/bin"

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# opencode
fish_add_path /home/khaled/.opencode/bin

# herdr
herdr completion fish | source
alias hw='herdr --session work'
alias hp='herdr --session personal'
