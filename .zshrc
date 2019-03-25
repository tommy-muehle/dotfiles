export PATH=/usr/local/bin:/usr/local/sbin:$PATH

export ZSH="$HOME/.oh-my-zsh"
export UPDATE_ZSH_DAYS=7
export EDITOR=$(which vim)
export GOPATH=$HOME/Projects/Go

# Theme
ZSH_THEME="powerlevel9k/powerlevel9k"
export POWERLEVEL9K_SHORTEN_DIR_LENGTH=2

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
plugins=(brew colorize docker docker-compose dotenv git github golang kubectl osx vagrant z zsh-completions)

# Aliases
if [ -f ~/.aliases ]; then
    source ~/.aliases
fi

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

# Special device settings
if [ -f ~/.extra ]; then
    source ~/.extra
fi
