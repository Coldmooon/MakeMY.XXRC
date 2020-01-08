# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="amuse"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

# ===============================  Basic Configuration ========-========================
#
export TERM=xterm-256color

mand () {MANWIDTH=80 man "$@" | col -b | cat -n;}

# output which files or processes are using DISPLAY environment variable
# See https://askubuntu.com/questions/432610/how-to-know-which-processes-have-the-display-variable-set
alias indis="$HOME/Scripts/indisplay.sh"

# see https://superuser.com/questions/417627/oh-my-zsh-history-completion
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward

# =============================== Alias ===============================================
#
# Convenience
alias l="ls -l"
alias lt="ls -Crt"

alias gss="git status"

alias r1="$HOME/Scripts/caffe_output_filter.sh train top1"
alias r5="$HOME/Scripts/caffe_output_filter.sh train top5"
alias rs="$HOME/Scripts/caffe_output_filter.sh train loss"
alias e1="$HOME/Scripts/caffe_output_filter.sh test top1"
alias e5="$HOME/Scripts/caffe_output_filter.sh test top5"
alias es="$HOME/Scripts/caffe_output_filter.sh test loss"
alias ss="cd $HOME/Developer/fb.resnet.torch/checkpoints && l"
alias mm="cd $HOME/Developer/fb.resnet.torch/models && l"
alias t="tmux attach -t"
alias ee="$HOME/Scripts/log.sh"
alias ns="nvidia-smi"

# Commands
alias cpcv="cmake -DCMAKE_BUILD_TYPE=RELEASE -DWITH_TBB=ON -DBUILD_TIFF=ON -DWITH_EIGEN=ON -DWITH_V4L=ON -DWITH_OPENGL=ON -DWITH_GSTREAMER=ON -DBUILD_TESTS=OFF -DBUILD_PERF_TESTS=OFF -DCMAKE_INSTALL_PREFIX=$HOME/Dependencies/opencv -DPYTHON3_EXECUTABLE=$(which python) -DPYTHON3_INCLUDE_DIR=$HOME/anaconda3/include/python3.6m -DPYTHON_LIBRARY=$HOME/anaconda3/lib/libpython3.6m.so -DPYTHON3_NUMPY_INCLUDE_DIRS=$HOME/anaconda3/lib/python3.6/site-packages/numpy/core/include .."

alias memcost="ps aux|sort -nk +4|tail"


# SSH login
source ~/.sshlog.sh

# ===============================  System Environment ================================
#
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH="$HOME/anaconda3/bin/:$PATH"
export PATH=$HOME/Dependencies/bin/:$PATH
# export PATH=$HOME/Utils/zsh/bin:$PATH
export PATH="$HOME/Softwares/clion-2019.1.4/bin/:$PATH"
export PATH="$HOME/Softwares/pycharm-2019.1.3/bin/:$PATH"

export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib
# export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu/:$LD_LIBRARY_PATH
# export LD_LIBRARY_PATH=/usr/local/lib/x86_64-linux-gnu/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$HOME/anaconda3/lib:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$HOME/Dependencies/lib:$LD_LIBRARY_PATH

# export C_INCLUDE_PATH=/usr/local/include:/usr/include
# export C_INCLUDE_PATH=$HOME/anaconda3/include:$C_INCLUDE_PATH
# export C_INCLUDE_PATH=$HOME/Dependencies/include:$C_INCLUDE_PATH
#
# export CPLUS_INCLUDE_PATH=/usr/local/include:/usr/include
# export CPLUS_INCLUDE_PATH=$HOME/anaconda3/include:$CPLUS_INCLUDE_PATH
# export CPLUS_INCLUDE_PATH=$HOME/Dependencies/include:$CPLUS_INCLUDE_PATH

# Pkg-config
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig
export PKG_CONFIG_PATH=$HOME/anaconda3/lib/pkgconfig:$PKG_CONFIG_PATH
export PKG_CONFIG_PATH=$HOME/Dependencies/lib/pkgconfig:$PKG_CONFIG_PATH

# Cuda
export PATH="/usr/local/cuda/bin:$PATH"
export LD_LIBRARY_PATH=/usr/local/cuda/lib64/:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/usr/local/nccl/lib/:$LD_LIBRARY_PATH

# Matlab
alias matlab=$HOME/Scripts/matlab.sh

# Opencv
alias opencv=$HOME/Scripts/opencv.sh

# shadowsocks
alias shadowsocks=$HOME/Scripts/shadowsocks

# for caffe
export PYTHONPATH=$HOME/Developer/caffe/python:$PYTHONPATH
# comment out if using iTorch
# export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libtiff.so.5

# for Torch
# export LD_PRELOAD=/lib/x86_64-linux-gnu/libreadline.so.6

# for Proxychains
# export LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libproxychains.so.3

# for Jupyter
# export JUPYTER_DATA_DIR=/usr/local/share/jupyter

# for Pylear2
# export PYLEARN2_DATA_PATH=$HOME/Developer/pylearn2/data
# export PYTHONPATH=$PYTHONPATH:$HOME/Developer/pylearn2
# export PYTHONPATH=$PYTHONPATH:$HOME/Developer/PyCold

# for iterm2 on Mac OS
export iterm2_hostname="10.112.67.139:22"
# test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# =============================== Conda Python ================================
#
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
