declare -A TRUELINE_COLORS=(
    [orange]='255;150;45'
    [purple]='186;21;255'
    [red]='230;0;0'
)


declare -a TRUELINE_SEGMENTS=(
    #'user,orange,black,bold'
    'host,black,orange,bold'
    'venv,black,purple,bold'
    'working_dir,orange,black,normal'
    'git,grey,special_grey,normal'
    'newline,orange,black,bold'
    'exit_status,red,black,normal'
)

declare -A TRUELINE_SYMBOLS=(
    [git_modified]='*'
)


_trueline_host_segment() {
    local fg_color="$1"
    local bg_color="$2"
    local font_style="$3"
    local host="$HOSTNAME"
    local segment="$(_trueline_separator)"
    segment+="$(_trueline_content "$fg_color" "$bg_color" "$font_style" " $host")"
    PS1+="$segment"
    _last_color=$bg_color
}

#
source ~/.dotfiles/shell/plugins/trueline/trueline.sh
