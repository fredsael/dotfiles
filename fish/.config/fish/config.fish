source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
    # Don't run fastfetch
end

set -gx SSH_AUTH_SOCK "$XDG_RUNTIME_DIR/ssh-agent.socket"
set -gx EDITOR nvim
set -gx GTK_IM_MODULE simple # Have to set this to be able to use ~ in Ghostty

set -g __pure_prompt_symbol (set_color green)'❯ '(set_color normal)

# function fish_prompt
#     set_color red
#     echo -n "❯ "
#     set_color normal
# end

# oh-my-posh init fish --config $HOME/.config/ohmyposh/new_base.omp.toml | source
