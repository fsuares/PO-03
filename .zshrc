
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

eval "$(starship init zsh)"
. "$HOME/.asdf/asdf.sh"

source /home/fernando/.antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
#antigen theme robbyrussell
#antigen theme jonathan
#antigen theme strug
#antigen theme xiong-chiamiov-plus
#antigen theme agnoster
#antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

# Navigation
alias l='eza -lh --icons'
alias ll='eza -lha --icons'
alias c='clear'
alias clip='xclip -selection clipboard'
alias rm='rm -ri'

# Terminal shortcuts
alias cat='batcat'
alias vim='nvim'
alias top='bashtop' 

# FLATPAK
alias flatpak='sudo flatpak'

# SNAP
alias snap='sudo snap'

# APT 
alias install='sudo apt install'
alias remove='sudo apt remove'
alias list-up='apt list --upgradable'

# SCRIPTS
alias upgrader="bash $HOME/Documents/scripts/updater.sh"
alias zed="bash $HOME/Documents/scripts/zed.sh"
alias fetch='nerdfetch'
alias model='java -jar $HOME/Downloads/apps/brModelo/brModelo.jar'
nerdfetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

PATH=~/.console-ninja/.bin:$PATH

# bun completions
[ -s "/home/fernando/.bun/_bun" ] && source "/home/fernando/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
