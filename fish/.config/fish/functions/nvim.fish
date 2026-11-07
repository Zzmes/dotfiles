function nvim --wraps=nvim --description 'Enable colored Neovim underlines in local Otty'
    if test "$TERM_PROGRAM" = otty; and test "$TERM" = xterm-256color; and not set -q SSH_CONNECTION
        set -l terminfo (command mktemp -d)
        if test -n "$terminfo"
            # Advertise Otty's underline-color support without changing TERM.
            printf 'xterm-256color|xterm with Otty underline colors,\n\tSu,\n\tuse=xterm-256color,\n' > "$terminfo/otty.ti"
            if command tic -x -o "$terminfo" "$terminfo/otty.ti" 2>/dev/null
                set -lx TERMINFO "$terminfo"
                command nvim $argv
                set -l nvim_status $status
                command rm -rf -- "$terminfo"
                return $nvim_status
            end
            command rm -rf -- "$terminfo"
        end
    end

    command nvim $argv
end
