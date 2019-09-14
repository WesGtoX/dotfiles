export TERM="xterm-256color"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Ignore insecure completion-dependent directories permission issues
ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH="/home/wesley/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Set 'fonts'
POWERLEVEL9K_MODE="nerdfont-complete"

# Set 'prompt' elements
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir_writable pyenv virtualenv anaconda context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs)

# Set 'prompt'
# POWERLEVEL9K_DISABLE_LPROMPT=true
# POWERLEVEL9K_DISABLE_RPROMPT=true

# Set 'custom_icon'
# POWERLEVEL9K_CUSTOM_ARCH_ICON="echo  "

# Set 'shorten_dir' length
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1

# Set 'color' scheme
POWERLEVEL9K_COLOR_SCHEME='light'

# Set 'os_icon' segment colors
POWERLEVEL9K_OS_ICON_FOREGROUND='deepskyblue3'
POWERLEVEL9K_OS_ICON_BACKGROUND=233

# Set 'custom_icon' segment colors
# POWERLEVEL9K_CUSTOM_ARCH_ICON_BACKGROUND=069
# POWERLEVEL9K_CUSTOM_ARCH_ICON_FOREGROUND=015

# Set 'pyenv' segment colors
POWERLEVEL9K_PYENV_BACKGROUND='springgreen4'

# Set 'virtualenv' segment colors
POWERLEVEL9K_VIRTUALENV_BACKGROUND='springgreen4'

# Set 'anaconda' segment colors
POWERLEVEL9K_ANACONDA_BACKGROUND='springgreen4'

# Set 'context' segment colors
## Default User
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND=010
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND=233
## Root User
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND=010
POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND=233
## Sudo User
POWERLEVEL9K_CONTEXT_SUDO_FOREGROUND=010
POWERLEVEL9K_CONTEXT_SUDO_BACKGROUND=233
## Remote User
POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND=010
POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND=233
## Remote Sudo User
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_FOREGROUND=010
POWERLEVEL9K_CONTEXT_REMOTE_SUDO_BACKGROUND=233

# Set 'dir_writable' segment colors
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND=220
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND=088

# Set 'dir' segment colors
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=233
POWERLEVEL9K_DIR_HOME_FOREGROUND=233
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=233
POWERLEVEL9K_DIR_ETC_FOREGROUND=233
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=075
POWERLEVEL9K_DIR_HOME_BACKGROUND=075
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=075
POWERLEVEL9K_DIR_ETC_BACKGROUND=075

# Set 'vcs' segment colors
## Checkout Clean
POWERLEVEL9K_VCS_CLEAN_FOREGROUND=233
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=154
## Checkout Contains Untracked Files
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=233
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=154
## Checkout Contains (Tracked) Modified Files
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=233
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=220
## Checkout Is Clobbered
POWERLEVEL9K_VCS_CLOBBERED_FOREGROUND=233
POWERLEVEL9K_VCS_CLOBBERED_BACKGROUND=196

# Set 'status' segment colors
## Status OK
POWERLEVEL9K_STATUS_OK_FOREGROUND=154
POWERLEVEL9K_STATUS_OK_BACKGROUND=233
## Status Error
POWERLEVEL9K_STATUS_CROSS=true
### if POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_ERROR_FOREGROUND=196
POWERLEVEL9K_STATUS_ERROR_BACKGROUND=233
### if POWERLEVEL9K_STATUS_CROSS=false
# P9K_STATUS_ERROR_CR_FOREGROUND=154
# P9K_STATUS_ERROR_CR_BACKGROUND=196

# Set 'root_indicator' segment colors
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND=220
POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND=233

# Set 'background_jobs' segment colors
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND=233
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND=220


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
plugins=(
    git
    python
    docker
    zsh-syntax-highlighting
    zsh-autosuggestions
    bgnotify
)

source $ZSH/oh-my-zsh.sh

if [ $UID -ne 0 ]; then
    source $HOME/.config/zsh/exports
fi

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
