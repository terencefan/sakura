# af-magic.zsh-theme
# Repo: https://github.com/andyfleming/oh-my-zsh
# Direct Link: https://github.com/andyfleming/oh-my-zsh/blob/master/themes/af-magic.zsh-theme

if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# Determine active Python virtualenv details.
function set_python_version () {
  version="$(python --version 2>&1 | awk '{print $2}')"
  PYTHON_VERSION="%{$fg[blue]%}[py: $version]%{$reset_color%}"
}

function set_php_version () {
  version="$(php -r 'echo phpversion();' 2> /dev/null)"
  PHP_VERSION="%{$fg[magenta]%}[php: $version]%{$reset_color%}"
}

function set_ruby_version () {
  version="$(ruby -v | awk '{print $2}')"
  RUBY_XVERSION="%{$fg[red]%}[ruby: $version]%{$reset_color%}"
}

function set_node_version () {
  version="$(node --version 2> /dev/null)"
  NODE_VERSION="%{$fg[green]%}[node: $version]%{$reset_color%}"
}

function language_version() {
  # Set the PYTHON_VERSION variable.
  set_python_version

  # Set the PHP_VERSION variable.
  set_php_version

  # Set the RUBY_VERSION variable.
  set_ruby_version

  # Set the NODE_VERSION variable.
  set_node_version

  echo ${PYTHON_VERSION}${PHP_VERSION}${RUBY_XVERSION}${NODE_VERSION}
}

function virtualenv_prompt_info() {
}

# Detect whether the current directory is a git repository.
function is_git_repository {
  git branch > /dev/null 2>&1
}

# Determine the branch/state information for this git repository.
function set_git_branch {
  # Capture the output of the "git status" command.
  git_status="$(git status 2> /dev/null)"

  # Set color based on clean/staged/dirty.
  if [[ ${git_status} =~ "working tree clean" ]]; then
    state="%{$fg[green]%}"
  elif [[ ${git_status} =~ "Changes to be committed" ]]; then
    state="%{$fg[yellow]%}"
  else
    state="%{$fg[red]%}"
  fi

  # Set arrow icon based on status against remote.
  remote_pattern="Your branch is (.*) of (.*)"
  if [[ ${git_status} =~ ${remote_pattern} ]]; then
    if [[ $mache[1] == "ahead" ]]; then
      remote="↓"
    else
      remote="↑"
    fi
  else
    remote=""
  fi
  diverge_pattern="Your branch and (.*) have diverged"
  if [[ ${git_status} =~ ${diverge_pattern} ]]; then
    remote="↕"
  fi

  # Get the name of the branch.
  branch_pattern="^On branch ([0-9a-zA-Z_\-\.]+)"
  if [[ ${git_status} =~ ${branch_pattern} ]]; then
    branch=$match[1]
  fi

  # Set the final branch string.
  BRANCH="${state}(${branch})${remote}%{$reset_color%}"
}

function git_prompt_info() {
  if is_git_repository ; then
    set_git_branch
    echo $BRANCH
  fi
}


VIRTUAL_ENV_DISABLE_PROMPT=1

# color vars
eval my_gray='$FG[237]'
eval my_orange='$FG[214]'

function machine_info() {
    if ! test -z "$VIRTUAL_ENV" ; then
        venv=`basename ${VIRTUAL_ENV}`
        echo "%{$fg[blue]%}($venv)%{$reset_color%}"
    else
        echo "$my_gray%n@%m%{$reset_color%}"
    fi
}

# primary prompt
PS1='
$(language_version)
$FG[214]%~ \
$(git_prompt_info) \
$FG[105]%(!.#.»)%{$reset_color%} '
PS2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'

RPROMPT='$(machine_info)'
