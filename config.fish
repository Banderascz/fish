source /usr/share/cachyos-fish-config/cachyos-config.fish

set --global fish_greeting = ""

set -g theme_color_theme catppuccin-mocha

alias cls=clear
alias whitch=which
alias fastfetch="fastfetch -c groups"
alias s="paru"
alias p="sudo pacman -S"
if not set -q SSH_AUTH_SOCK
    ssh-agent -c | source
end

zoxide init fish | source
#cat ~/Dokumenty/ascii-logos-main/custom/fakethink-text-dolar.txt
