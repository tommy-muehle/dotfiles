export ZSH="$HOME/.oh-my-zsh"
export UPDATE_ZSH_DAYS=7
export EDITOR='vim'

ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="false"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"
HIST_IGNORE_SPACE="true"

# Load ZSH plugins
plugins=(git vagrant docker osx brew docker-compose github go z)

# Aliases
alias la="exa -abghl --git --color=automatic"
alias dm='docker-machine'
alias dc='docker-compose'
alias phpstan='docker run -v $PWD:/app --rm phpstan/phpstan'
alias phpmd='docker run -v $PWD:/app --rm dockerizedphp/phpmd'

# Custom
source $ZSH/oh-my-zsh.sh

if [ -f '/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' ]; then
    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

if [ -f '$HOME/Projects/google-cloud-sdk/path.zsh.inc' ]; then
    source '$HOME/Projects/google-cloud-sdk/path.zsh.inc';
fi

if [ -f '$HOME/Projects/google-cloud-sdk/completion.zsh.inc' ]; then
    source '$HOME/Projects/google-cloud-sdk/completion.zsh.inc';
fi

if [ -x "$(command -v kubectl)" ]; then
    source <(kubectl completion zsh)
fi