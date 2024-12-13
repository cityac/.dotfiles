# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="cloud"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    docker
    sudo
    1password
)

source $ZSH/oh-my-zsh.sh

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

# Custom functions

#Run tmux tokenizer by Ctrl+F shortcut
# Define a function to run the tmux-sessionizer script
# run_tmux_sessionizer() {
#     ~/personal/tmux/tmux-sessionizer
# }

# Register the function as a ZLE widget
# zle -N run_tmux_sessionizer

# Bind Ctrl+F to the widget
# bindkey '^F' run_tmux_sessionizer
# END Run tmux tokenizer by Ctrl+F shortcut

# Make directory function
# Makes new directory and navigate to it

unalias md
md() {
  mkdir -p "$@" && cd "$@"
}

# Displays text in a variety of colors using ANSI escape codes.
# Each color corresponds to a foreground color code (30 to 37),
# which are part of the standard Bash color palette.
# Example: Black, Red, Green, Yellow, Blue, Magenta, Cyan, White.
# The color of the text is reset to the terminal's default after each line.
print-colors() {
    for i in {30..37}; do
        # Print the colored text
        echo -e "\e[${i}mThis is color code: ${i}\e[0m"
    done
    # Print the actual code used for demonstration
    printf "Usage example for color code 31 (red): %s" ' echo -e "\e[31mThis is color code: 31\e[0m"'
}


# Example aliases
alias aliases="grep -E '^(alias|# alias)' ~/.zshrc"
# alias ls
alias la="ls -lsah | lolcat"
alias l="ls | lolcat"
# alias tmux
# alias tmux sessionizer
alias ts="~/personal/tmux/tmux-sessionizer"
# alias tmux terminal
alias tt="tmux attach-session -t 'TMUX terminal'"
# alias tmux cheat sheet
alias cht="~/personal/tmux/tmux-cht"
# alias tmux terminal split horizontaly
alias tth="tmux split-window -h"
# alias tmux terminal split vertically
alias ttv="tmux split-window -v"
# alias nvim
alias h="nvim ~"
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
# alias docker&kuber
alias dk="docker"
alias dkps="docker ps"
alias dkst="docker stats"
alias k="kubectl"
# alisa yarn
alias start="yarn start"
alias dev="yarn dev"
alias text="yarn test"
# alias aws
alias dyn="aws dynamodb"
#  alias Yabai
alias source_yabai="source ~/.config/yabai/yabairc"
alias bsp="yabai -m config layout bsp"
alias managed="yabai -m config layout managed"
alias layoff="yabai -m config layout float"
# alias system
alias clear="clear && pwd"
alias kill="kill -9"
alias jobs="jobs -l"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


export CONFLUENT_HOME=/Users/s.aituhanov/confluent-7.4.0
export PATH=$PATH:$CONFLUENT_HOME/bin


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

 export AWS_DEFAULT_REGION=
 export AWS_SECRET_ACCESS_KEY=
 export AWS_ACCESS_KEY_ID=

source ~/.bash-powerline.sh

# Created by `pipx` on 2024-11-08 20:46:58
export PATH="$PATH:/Users/s.aituhanov/.local/bin"
export PATH="/usr/local/bin:$PATH"


# echo "$TERM_PROGRAM"

if [[ "$TERM_PROGRAM" == "WarpTerminal" ]]; then

    if ! tmux has-session -t "TMUX terminal" 2> /dev/null; then
        #echo NOSESSION
        tmux new-session -s "TMUX terminal" -d
    fi
fi
