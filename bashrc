# harrietobrien
# ~/.bashrc

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias wp='bhb84442'

path_electron='/usr/lib/electron33/electron'
path_onenote='/usr/local/bin/onenote-2024.10.121'
if [ -f $path_electron ] && [ -f $path_onenote ]; then
    alias onote="${path_electron} ${path_onenote} &> /dev/null"
fi
alias profex="/usr/local/bin/Profex5/profex.sh &> /dev/null"

_164=$(tput setaf 164)	#magenta
_034=$(tput setaf 34)	#limegreen
_161=$(tput setaf 161)	#hotpink
_183=$(tput setaf 183)	#lightviolet
_148=$(tput setaf 148)	#yellowgreen
reset=$(tput sgr0)	#resetcolor

export PS1="${_164}✿ ${_034}\u${_161}@${_183}\h ${_148}[\w] ${reset}$ "

if command -v neofetch >/dev/null 2>&1; then
    neofetch
elif command -v fastfetch >/dev/null 2>&1; then
    fastfetch
else
    continue
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/harriet/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/harriet/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/harriet/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/harriet/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
