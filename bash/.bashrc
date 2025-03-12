# Chargement de l'environnement utilisateur
export PATH="$HOME/bin:$PATH"

# Activer la complétion et l'historique
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend

# Alias courants
alias ll='ls -lah'
alias grep='grep --color=auto'
alias rm='rm -i'

# Charger Starship si installé
if command -v starship &> /dev/null; then
    eval "$(starship init bash)"
fi
