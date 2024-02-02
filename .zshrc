

source /home/duck/.antigen.zsh

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
antigen theme xiong-chiamiov-plus
# Tell Antigen that you're done.
antigen apply


alias l='exa -lh --icons'
alias ll='exa -lha --icons'
alias c='clear'
alias clip='xclip -selection clipboard'
alias rm='rm -ri'
