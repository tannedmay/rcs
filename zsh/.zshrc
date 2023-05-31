export WORKSPACE=$HOME/workspace
export TOP=$WORKSPACE/api-app/
export VIM_TOP=$WORKSPACE/rcs/vim/vimrc/
export ZSH_TOP=$WORKSPACE/rcs/zsh/zshrc/
export RC_TOP=$WORKSPACE/rcs/

# Load the 'init.sh'.
source $WORKSPACE/rcs/zsh/zshrc/init.sh # find all '.sh' files in zshrc, exclude 'init.sh'.
FILES_STR=$(find $WORKSPACE/rcs/zsh/zshrc -name '*.sh' -not -name 'init.sh') # `tr` is a find-and-replace utility.

# Outer () will convert the output of $() to array.
FILES=($(echo $FILES_STR | tr '\n' ' '))
for FILE in $FILES; do
    source $FILE
done

# vicmd zsh key bind. In shell you can use vicmd
bindkey -v
