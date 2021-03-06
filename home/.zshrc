# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/gord/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"
SPACESHIP_CHAR_SYMBOL=' ❱ '
SPACESHIP_DIR_TRUNC_PREFIX='../'
SPACESHIP_USER_SHOW='needed'
SPACESHIP_PROMPT_ADD_NEWLINE='true'
SPACESHIP_GIT_SYMBOL='  '
SPACESHIP_PACKAGE_SYMBOL='  '
SPACESHIP_NODE_SYMBOL='  '

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
plugins=(sudo
yarn
git
colored-man-pages
colorize
command-not-found
npm
nvm
archlinux
themes
zsh-autosuggestions
zsh-syntax-highlighting)

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
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#fpath=($fpath "/home/gord/.zfunctions")

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  #prompt spaceship



alias key='sudo setxkbmap -model abnt2 -layout br -variant abnt2'
alias clone='~/.config/clone.sh'
alias duet='~/.config/duet.sh'
alias only='~/.config/only.sh'
alias up='yaourt -Syua --noconfirm'
alias ls='ls --color=auto'
alias sf='screenfetch'
alias pig='ping -c3 google.com'
alias vi='vim'
alias tpad='synclient TapButton{1=1,2=3,3=2}'
alias ipflush='sudo ip address flush dev enp3s0'
alias nomeserver='sudo cp {~/.,/etc/}resolv.conf'
alias e003='ipflush && sudo ip address add 172.16.0.31/24 dev enp3s0 && sudo route add default gw 172.16.0.1 && nomeserver'
alias e101='ipflush && sudo ip address add 172.16.0.198/24 dev enp3s0 && sudo route add default gw 172.16.0.193 && nomeserver'
alias e105='ipflush && sudo ip address add 172.16.1.198/24 dev enp3s0 && sudo route add default gw 172.16.1.193 && nomeserver'
alias e100='ipflush && sudo ip address add 172.16.0.133/24 dev enp3s0 && sudo route add default gw 172.16.0.129 && nomeserver'
alias mirrs='sudo reflector -l 10 --sort rate --save /etc/pacman.d/mirrorlist'
alias top='gotop -c monokai'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin


source ~/.zprofile

export PATH=$PATH:/Users/yourmacosusername/.sdkman/candidates/kotlin/current/bin/
function kotlinr() {
  echo Compiling, please wait...
  kotlinc $1 -include-runtime -d $2.jar
  java -jar $2.jar
}

