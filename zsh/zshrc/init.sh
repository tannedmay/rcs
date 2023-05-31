# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ZSH theme
ZSH_THEME="powerlevel10k/powerlevel10k"

alias python=python3
plugins=(git sudo zsh-256color alias-tips zsh-completions zsh-autosuggestions alias-tips yum ssh-agent docker autoupdate zsh-syntax-highlighting git-auto-fetch)

source $ZSH/oh-my-zsh.sh
