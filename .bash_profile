# Configure the shell environment
  source ~/.colors.bash

# source git specific bash scripts
  source ~/.git-prompt.sh
  export GIT_PS1_SHOWDIRTYSTATE=yes
  export GIT_PS1_SHOWSTASHSTATE=yes

# Aliases and Functions
  alias la='ls -a'
#   alias ll='ls -lht'
#   alias ~="cd ~"                              # ~:            Go Home
#   alias c='clear'                             # c:            Clear terminal display
#   alias which='type -all'                     # which:        Find executables
#   alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
#   alias wget='wget --no-check-certificate'
#   alias grep='grep --color=auto'
#   printpath(){ sed 's/:/\n/g' <<< "$PATH"; }
#   printlist(){ sed 's/:/\n/g' <<< "$1"; }

# Configure for NREL MBP
  # export PS1="$BGreen>>mbp@$BCyan\w $BPurple\$(__git_ps1 '(%s)')$BRed\$ $Color_Off"
  export EDITOR=/usr/bin/nano

  # add color to terminal, from http://osxdaily.com/2012/02/21/add-color-to-the-terminal-in-mac-os-x/
  export CLICOLOR=1
  export LSCOLORS=ExFxBxDxCxegedabagacad

  # source git specific bash scripts
  # ln -s /usr/local/etc/bash_completion.d/git-completion.bash .git-completion.bash
  # ln -s /usr/local/etc/bash_completion.d/git-prompt.sh .git-prompt.sh
  # installed with git from homebrew at
  #  /usr/local/etc/bash_completion.d/git-completion.bash
  #  /usr/local/etc/bash_completion.d/git-prompt.sh
  source ~/.git-completion.bash

  # mac-specific aliases and functions
  alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
  alias pdf='open -a Preview' 

  # set compilers
  export FC=/usr/local/bin/gfortran
  export CXX=/usr/local/bin/clang++
  export CC=/usr/local/bin/clang

  # Homebrew path setup
  # Brew's make and sed are higher version than mac's
  PATH="/usr/local/sbin:$PATH"

  export PATH

  # Starting on macOS Catalina (10.15) the headers used for various system libraries have
  # been moved from their previous location. This can be solved by setting SDKROOT in
  # your shell configuration to the value provided by xcrun.
  export SDKROOT=$(xcrun --show-sdk-path)

  # Silences the macOS warning to update to ZSH
  export BASH_SILENCE_DEPRECATION_WARNING=1

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
