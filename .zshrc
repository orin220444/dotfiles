# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/orin/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "clean" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
 DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=1

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git nvm npm composer sudo rustup rust ubuntu zsh-autosuggestions zsh-syntax-highlighting zsh-peco-history) 
export PATH="$HOME/.nvm:$PATH"
source $ZSH/oh-my-zsh.sh
source $HOME/.bash_aliases
NVM_DIR=$HOME/.nvm
NVM_AUTOLOAD=1
NVM_LAZY=1
ZSH_AUTOSUGGEST_USE_ASYNC=1
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

#Deno
  export DENO_INSTALL="/home/orin/.deno"
  export PATH="$DENO_INSTALL/bin:$PATH"
# Apps directory
  export APPS="$HOME/Apps"
#Flutter 
  export PATH="$APPS/flutter/bin:$PATH"
#Robo3t
  export PATH="$APPS/robo3t/bin:$PATH"
#Custom aliases
  #updater
    alias update='$HOME/updater/update.sh'
  #protonvpn
    alias vpnon='sudo protonvpn c -f' 
    alias vpnoff='sudo protonvpn d'    
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
eval "$(starship init zsh)"
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
 alias zshconfig="nvim ~/.zshrc"
 alias sourcesh="source ~/.zshrc"
 alias vimcofig="nvim ~/.vimrc"
 alias tmuxconfig="nvim ~/.tmux.conf"
 alias sourcemux="tmux source ~/.tmux.conf"
# alias ohmyzsh="mate ~/.oh-my-zsh"
source $HOME/.zsh_env.sh
fpath+=${ZDOTDIR:-~}/.zsh_functions

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

# tab multiplexer configuration: https://github.com/austinjones/tab-rs/
source "/home/orin/.local/share/tab/completion/zsh-history.zsh"
# end tab configuration

