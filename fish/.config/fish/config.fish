if status is-interactive
    # Commands to run in interactive sessions can go here
end

# starship
starship init fish | source

# lsd
set -x LS_COLORS "di=34:ln=36:ex=32:pi=33:so=35:bd=34;46:cd=34;43:or=31:mi=41:tw=30;42:ow=34;42:*.c=36:*.cpp=36:*.h=36:*.hpp=36:*.rs=35:*.go=36:*.py=33:*.sh=32:*.js=33:*.ts=33:*.java=33:*.md=36:*.txt=37:*.pdf=31:*.doc=31:*.docx=31:*.tar=31:*.gz=31:*.bz2=31:*.xz=31:*.zip=31:*.7z=31:*.rar=31:*.jpg=35:*.jpeg=35:*.png=35:*.gif=35:*.svg=35:*.mp3=36:*.wav=36:*.flac=36:*.mp4=36:*.mkv=36:*.avi=36:*.mov=36"

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# vpn
# set -x https_proxy http://127.0.0.1:7897
# set -x http_proxy http://127.0.0.1:7897
