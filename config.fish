# Use exported 256-color TERM
set -Ux TERM xterm-256color

# Simple colored prompt (root, @, and host in different colors)
function fish_prompt
    set_color magenta
    printf '%s' (whoami)
    set_color cyan
    printf '@'
    set_color blue
    printf '%s ' (hostname)
    set_color green
    printf '%s ' (prompt_pwd)
    set_color blue
    printf '➜ '
    set_color normal
end

# Basic syntax highlight colors
set -U fish_color_command cyan
set -U fish_color_param blue
set -U fish_color_error red --bold
set -U fish_color_comment brblue
set -U fish_color_string yellow

# Make ls colorful if GNU ls is installed
alias ls='ls --color=auto'

# ------------------------------------------------------------
# Valid named colors you can use with set_color in fish:
# normal
# black, red, green, yellow, blue, magenta, cyan, white
# brblack, brred, brgreen, bryellow, brblue, brmagenta, brcyan, brwhite
# You can also use hex: set_color '#FF00FF'
# Or add styles: --bold, --dim, --underline, --italics, --reverse
# Example: set_color brcyan --bold
# ------------------------------------------------------------
