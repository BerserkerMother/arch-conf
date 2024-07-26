if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
    fish_vi_key_bindings
    echo "we are going low key"
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/kave/miniconda3/bin/conda "shell.fish" "hook" $argv | source
set DENO_INSTALL "/home/kave/.deno"
set PATH "$DENO_INSTALL/bin:$PATH"
# <<< conda initialize <<<
#fish_config theme choose "Dracula Official"
alias tara=poweroff
alias vim=nvim
