# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ZSH theme
ZSH_THEME="powerlevel10k/powerlevel10k"

alias python=python3
plugins=(git sudo zsh-256color alias-tips zsh-completions zsh-autosuggestions alias-tips yum ssh-agent docker autoupdate zsh-syntax-highlighting git-auto-fetch zsh-ssh docker golang git-open virtualenv aws kubectl helm kustomize autoswitch_virtualenv kubectx)

source $ZSH/oh-my-zsh.sh
