# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export WORKSPACE=$HOME/Developer
export TOP=$WORKSPACE/PAF/api-app/

# Load the 'init.sh'.
source $WORKSPACE/rcs/zsh/zshrc/init.sh # find all '.sh' files in zshrc, exclude 'init.sh'.
FILES_STR=$(find $WORKSPACE/rcs/zsh/zshrc -name '*.sh' -not -name 'init.sh') # `tr` is a find-and-replace utility.

# Outer () will convert the output of $() to array.
FILES=($(echo $FILES_STR | tr '\n' ' '))
for FILE in $FILES; do
    source $FILE
done
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
