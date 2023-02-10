# Generated by Powerlevel10k configuration wizard on 2023-02-09 at 18:14 -03.
# Based on romkatv/powerlevel10k/config/p10k-rainbow.zsh, checksum 6447.
# Wizard options: compatible, rainbow, ascii, 24h time, 1 line, compact, concise,
# instant_prompt=verbose.
# Type `p10k configure` to generate another config.
#
# Config for Powerlevel10k with powerline prompt style with colorful background.
# Type `p10k configure` to generate your own config based on it.
#
# Tip: Looking for a nice color? Here's a one-liner to print colormap.
#
#   for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done

# Temporarily change options.
'builtin' 'local' '-a' 'p10k_config_opts'
[[ ! -o 'aliases'         ]] || p10k_config_opts+=('aliases')
[[ ! -o 'sh_glob'         ]] || p10k_config_opts+=('sh_glob')
[[ ! -o 'no_brace_expand' ]] || p10k_config_opts+=('no_brace_expand')
'builtin' 'setopt' 'no_aliases' 'no_sh_glob' 'brace_expand'

# Defines character set used by powerlevel10k. It's best to let `p10k configure` set it for you.
typeset -g POWERLEVEL9K_MODE="nerdfont-complete"

# Set left 'prompt' elements
typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  os_icon
  dir_writable
  virtualenv
  anaconda
  pyenv
  goenv
  context
  dir
  vcs
)

# Set right 'prompt' elements
typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  status
  root_indicator
  command_execution_time
  background_jobs
  direnv
  todo
  timewarrior
  taskwarrior
)

# Set 'prompt'
# POWERLEVEL9K_DISABLE_LPROMPT=true
# POWERLEVEL9K_DISABLE_RPROMPT=true

# Add an empty line before each prompt.
typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=false

# Set 'shorten_dir' length
typeset -g POWERLEVEL9K_SHORTEN_DIR_LENGTH=1

# Set 'color' scheme
typeset -g POWERLEVEL9K_COLOR_SCHEME='light'

# Set 'envs' segment colors
typeset -g POWERLEVEL9K_PYENV_BACKGROUND='springgreen4'
typeset -g POWERLEVEL9K_VIRTUALENV_BACKGROUND='springgreen4'
typeset -g POWERLEVEL9K_ANACONDA_BACKGROUND='springgreen4'
typeset -g POWERLEVEL9K_GOENV_BACKGROUND='springgreen4'
typeset -g POWERLEVEL9K_NODENV_BACKGROUND='springgreen4'
typeset -g POWERLEVEL9K_NVM_BACKGROUND='springgreen4'
typeset -g POWERLEVEL9K_NODEENV_BACKGROUND='springgreen4'

#################################[ os_icon: os identifier ]##################################
# OS identifier color
typeset -g POWERLEVEL9K_OS_ICON_FOREGROUND='white'
typeset -g POWERLEVEL9K_OS_ICON_BACKGROUND=233

# Custom icon identifier color
# POWERLEVEL9K_CUSTOM_ARCH_ICON="echo  "

# Custom icon colors
# POWERLEVEL9K_CUSTOM_ARCH_ICON_BACKGROUND=069
# POWERLEVEL9K_CUSTOM_ARCH_ICON_FOREGROUND=015

################################[ prompt_char: prompt symbol ]################################
# Transparent background.
typeset -g POWERLEVEL9K_PROMPT_CHAR_BACKGROUND=
# Green prompt symbol if the last command succeeded.
typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=76
# Red prompt symbol if the last command failed.
typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=196
# Default prompt symbol.
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIINS_CONTENT_EXPANSION='>'
# Prompt symbol in command vi mode.
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VICMD_CONTENT_EXPANSION='<'
# Prompt symbol in visual vi mode.
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIVIS_CONTENT_EXPANSION='V'
# Prompt symbol in overwrite vi mode.
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIOWR_CONTENT_EXPANSION='^'
typeset -g POWERLEVEL9K_PROMPT_CHAR_OVERWRITE_STATE=true
# No line terminator if prompt_char is the last segment.
typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_PROMPT_LAST_SEGMENT_END_SYMBOL=
# No line introducer if prompt_char is the first segment.
typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_PROMPT_FIRST_SEGMENT_START_SYMBOL=
# No surrounding whitespace.
typeset -g POWERLEVEL9K_PROMPT_CHAR_LEFT_{LEFT,RIGHT}_WHITESPACE=

# Set 'context' segment colors
## Default User
typeset -g POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND=010
typeset -g POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND=233
## Root User
typeset -g POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND=010
typeset -g POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND=233
## Sudo User
typeset -g POWERLEVEL9K_CONTEXT_SUDO_FOREGROUND=010
typeset -g POWERLEVEL9K_CONTEXT_SUDO_BACKGROUND=233
## Remote User
typeset -g POWERLEVEL9K_CONTEXT_REMOTE_FOREGROUND=010
typeset -g POWERLEVEL9K_CONTEXT_REMOTE_BACKGROUND=233
## Remote Sudo User
typeset -g POWERLEVEL9K_CONTEXT_REMOTE_SUDO_FOREGROUND=010
typeset -g POWERLEVEL9K_CONTEXT_REMOTE_SUDO_BACKGROUND=233

##################################[ dir: current directory ]##################################
# Set 'dir writable' segment colors
typeset -g POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND=220
typeset -g POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND=088
# Set 'dir' segment colors
typeset -g POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=233
typeset -g POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=075
# Set 'dir home' segment colors
typeset -g POWERLEVEL9K_DIR_HOME_FOREGROUND=233
typeset -g POWERLEVEL9K_DIR_HOME_BACKGROUND=075
# Set 'dir home subfolder' segment colors
typeset -g POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=233
typeset -g POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=075
# Set 'dir etc' segment colors
typeset -g POWERLEVEL9K_DIR_ETC_FOREGROUND=233
typeset -g POWERLEVEL9K_DIR_ETC_BACKGROUND=075
# Set 'root indicator' segment colors
typeset -g POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND=220
typeset -g POWERLEVEL9K_ROOT_INDICATOR_BACKGROUND=233
# Don't shorten directories that contain any of these files. They are anchors.
local anchor_files=(
  .bzr
  .citc
  .git
  .hg
  .node-version
  .python-version
  .go-version
  .ruby-version
  .lua-version
  .java-version
  .perl-version
  .php-version
  .tool-version
  .shorten_folder_marker
  .svn
  .terraform
  CVS
  Cargo.toml
  composer.json
  go.mod
  package.json
  stack.yaml
)

#####################################[ vcs: git status ]######################################
# Version control background colors.
## Checkout Clean
typeset -g POWERLEVEL9K_VCS_CLEAN_FOREGROUND=233
typeset -g POWERLEVEL9K_VCS_CLEAN_BACKGROUND=154
## Checkout Contains Untracked Files
typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=233
typeset -g POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=154
## Checkout Contains (Tracked) Modified Files
typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=233
typeset -g POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=220
## Checkout Is Clobbered
typeset -g POWERLEVEL9K_VCS_CLOBBERED_FOREGROUND=233
typeset -g POWERLEVEL9K_VCS_CLOBBERED_BACKGROUND=196
## Checkout Is Conflicted
typeset -g POWERLEVEL9K_VCS_CONFLICTED_FOREGROUND=233
typeset -g POWERLEVEL9K_VCS_CONFLICTED_BACKGROUND=196
## Checkout Is Loading
typeset -g POWERLEVEL9K_VCS_LOADING_FOREGROUND=233
typeset -g POWERLEVEL9K_VCS_LOADING_BACKGROUND=196

# Branch icon. Set this parameter to '\UE0A0 ' for the popular Powerline branch icon.
# typeset -g POWERLEVEL9K_VCS_BRANCH_ICON='\UE0A0 '

# Untracked files icon. It's really a question mark, your font isn't broken.
# Change the value of this parameter to show a different icon.
typeset -g POWERLEVEL9K_VCS_UNTRACKED_ICON='?'

# Formatter for Git status.
#
# Example output: master wip <42>42 *42 merge ~42 +42 !42 ?42.
#
# You can edit the function to customize how Git status looks.
#
# VCS_STATUS_* parameters are set by gitstatus plugin. See reference:
# https://github.com/romkatv/gitstatus/blob/master/gitstatus.plugin.zsh.
function my_git_formatter() {
  emulate -L zsh

  if [[ -n $P9K_CONTENT ]]; then
    # If P9K_CONTENT is not empty, use it. It's either "loading" or from vcs_info (not from
    # gitstatus plugin). VCS_STATUS_* parameters are not available in this case.
    typeset -g my_git_format=$P9K_CONTENT
    return
  fi

  # Styling for different parts of Git status.
  local       meta='%7F' # white foreground
  local      clean='%0F' # black foreground
  local   modified='%0F' # black foreground
  local  untracked='%0F' # black foreground
  local conflicted='%1F' # red foreground

  local res

  if [[ -n $VCS_STATUS_LOCAL_BRANCH ]]; then
    local branch=${(V)VCS_STATUS_LOCAL_BRANCH}
    # If local branch name is at most 32 characters long, show it in full.
    # Otherwise show the first 12 .. the last 12.
    # Tip: To always show local branch name in full without truncation, delete the next line.
    (( $#branch > 32 )) && branch[13,-13]=".."  # <-- this line
    res+="${clean}${(g::)POWERLEVEL9K_VCS_BRANCH_ICON}${branch//\%/%%}"
  fi

  if [[ -n $VCS_STATUS_TAG
        # Show tag only if not on a branch.
        # Tip: To always show tag, delete the next line.
        && -z $VCS_STATUS_LOCAL_BRANCH  # <-- this line
      ]]; then
    local tag=${(V)VCS_STATUS_TAG}
    # If tag name is at most 32 characters long, show it in full.
    # Otherwise show the first 12 .. the last 12.
    # Tip: To always show tag name in full without truncation, delete the next line.
    (( $#tag > 32 )) && tag[13,-13]=".."  # <-- this line
    res+="${meta}#${clean}${tag//\%/%%}"
  fi

  # Display the current Git commit if there is no branch and no tag.
  # Tip: To always display the current Git commit, delete the next line.
  [[ -z $VCS_STATUS_LOCAL_BRANCH && -z $VCS_STATUS_TAG ]] &&  # <-- this line
    res+="${meta}@${clean}${VCS_STATUS_COMMIT[1,8]}"

  # Show tracking branch name if it differs from local branch.
  if [[ -n ${VCS_STATUS_REMOTE_BRANCH:#$VCS_STATUS_LOCAL_BRANCH} ]]; then
    res+="${meta}:${clean}${(V)VCS_STATUS_REMOTE_BRANCH//\%/%%}"
  fi

  # Display "wip" if the latest commit's summary contains "wip" or "WIP".
  if [[ $VCS_STATUS_COMMIT_SUMMARY == (|*[^[:alnum:]])(wip|WIP)(|[^[:alnum:]]*) ]]; then
    res+=" ${modified}wip"
  fi

  # <42 if behind the remote.
  (( VCS_STATUS_COMMITS_BEHIND )) && res+=" ${clean}<${VCS_STATUS_COMMITS_BEHIND}"
  # >42 if ahead of the remote; no leading space if also behind the remote: <42>42.
  (( VCS_STATUS_COMMITS_AHEAD && !VCS_STATUS_COMMITS_BEHIND )) && res+=" "
  (( VCS_STATUS_COMMITS_AHEAD  )) && res+="${clean}>${VCS_STATUS_COMMITS_AHEAD}"
  # <-42 if behind the push remote.
  (( VCS_STATUS_PUSH_COMMITS_BEHIND )) && res+=" ${clean}<-${VCS_STATUS_PUSH_COMMITS_BEHIND}"
  (( VCS_STATUS_PUSH_COMMITS_AHEAD && !VCS_STATUS_PUSH_COMMITS_BEHIND )) && res+=" "
  # ->42 if ahead of the push remote; no leading space if also behind: <-42->42.
  (( VCS_STATUS_PUSH_COMMITS_AHEAD  )) && res+="${clean}->${VCS_STATUS_PUSH_COMMITS_AHEAD}"
  # *42 if have stashes.
  (( VCS_STATUS_STASHES        )) && res+=" ${clean}*${VCS_STATUS_STASHES}"
  # 'merge' if the repo is in an unusual state.
  [[ -n $VCS_STATUS_ACTION     ]] && res+=" ${conflicted}${VCS_STATUS_ACTION}"
  # ~42 if have merge conflicts.
  (( VCS_STATUS_NUM_CONFLICTED )) && res+=" ${conflicted}~${VCS_STATUS_NUM_CONFLICTED}"
  # +42 if have staged changes.
  (( VCS_STATUS_NUM_STAGED     )) && res+=" ${modified}+${VCS_STATUS_NUM_STAGED}"
  # !42 if have unstaged changes.
  (( VCS_STATUS_NUM_UNSTAGED   )) && res+=" ${modified}!${VCS_STATUS_NUM_UNSTAGED}"
  # ?42 if have untracked files. It's really a question mark, your font isn't broken.
  # See POWERLEVEL9K_VCS_UNTRACKED_ICON above if you want to use a different icon.
  # Remove the next line if you don't want to see untracked files at all.
  (( VCS_STATUS_NUM_UNTRACKED  )) && res+=" ${untracked}${(g::)POWERLEVEL9K_VCS_UNTRACKED_ICON}${VCS_STATUS_NUM_UNTRACKED}"
  # "-" if the number of unstaged files is unknown. This can happen due to
  # POWERLEVEL9K_VCS_MAX_INDEX_SIZE_DIRTY (see below) being set to a non-negative number lower
  # than the number of files in the Git index, or due to bash.showDirtyState being set to false
  # in the repository config. The number of staged and untracked files may also be unknown
  # in this case.
  (( VCS_STATUS_HAS_UNSTAGED == -1 )) && res+=" ${modified}-"

  typeset -g my_git_format=$res
}
functions -M my_git_formatter 2>/dev/null

##########################[ status: exit code of the last command ]###########################
# Set 'status' segment colors
## Status OK
typeset -g POWERLEVEL9K_STATUS_OK_FOREGROUND=154
typeset -g POWERLEVEL9K_STATUS_OK_BACKGROUND=233
## Status Error
typeset -g POWERLEVEL9K_STATUS_CROSS=true
### if POWERLEVEL9K_STATUS_CROSS=true
typeset -g POWERLEVEL9K_STATUS_ERROR_FOREGROUND=196
typeset -g POWERLEVEL9K_STATUS_ERROR_BACKGROUND=233
### if POWERLEVEL9K_STATUS_CROSS=false
typeset -g P9K_STATUS_ERROR_CR_FOREGROUND=154
typeset -g P9K_STATUS_ERROR_CR_BACKGROUND=196

###################[ command_execution_time: duration of the last command ]###################
# Execution time color.
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=255
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND=0
# Show duration of the last command if takes at least this many seconds.
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=3
# Show this many fractional digits. Zero means round to seconds.
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=0
# Duration format: 1d 2h 3m 4s.
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FORMAT='d h m s'
# Custom icon.
typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_VISUAL_IDENTIFIER_EXPANSION=
# Custom prefix.
# typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_PREFIX='took '

#######################[ background_jobs: presence of background jobs ]#######################
# Set 'background_jobs' segment colors
typeset -g POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND=233
typeset -g POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND=220
# Don't show the number of background jobs.
# typeset -g POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE=false

#######################[ direnv: direnv status (https://direnv.net/) ]########################
# Direnv color.
typeset -g POWERLEVEL9K_DIRENV_FOREGROUND=252
typeset -g POWERLEVEL9K_DIRENV_BACKGROUND='springgreen4'

###[ virtualenv: python virtual environment (https://docs.python.org/3/library/venv.html) ]###
# Python virtual environment color.
typeset -g POWERLEVEL9K_VIRTUALENV_FOREGROUND=252
typeset -g POWERLEVEL9K_VIRTUALENV_BACKGROUND='springgreen4'
# Don't show Python version next to the virtual environment name.
typeset -g POWERLEVEL9K_VIRTUALENV_SHOW_PYTHON_VERSION=true
# If set to "false", won't show virtualenv if pyenv is already shown.
# If set to "if-different", won't show virtualenv if it's the same as pyenv.
typeset -g POWERLEVEL9K_VIRTUALENV_SHOW_WITH_PYENV=false
# Separate environment name from Python version only with a space.
# typeset -g POWERLEVEL9K_VIRTUALENV_{LEFT,RIGHT}_DELIMITER=

################[ todo: todo items (https://github.com/todotxt/todo.txt-cli) ]################
# Todo color.
typeset -g POWERLEVEL9K_TODO_FOREGROUND=252
typeset -g POWERLEVEL9K_TODO_BACKGROUND='springgreen4'
# Hide todo when the total number of tasks is zero.
typeset -g POWERLEVEL9K_TODO_HIDE_ZERO_TOTAL=true
# Hide todo when the number of tasks after filtering is zero.
typeset -g POWERLEVEL9K_TODO_HIDE_ZERO_FILTERED=false


# Tell `p10k configure` which file it should overwrite.
typeset -g POWERLEVEL9K_CONFIG_FILE=${${(%):-%x}:a}

(( ${#p10k_config_opts} )) && setopt ${p10k_config_opts[@]}
'builtin' 'unset' 'p10k_config_opts'
