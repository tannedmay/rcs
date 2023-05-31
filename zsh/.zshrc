export WORKSPACE=$HOME/Developer
export TOP=$WORKSPACE/api-app/
export VTOP=$WORKSPACE/rcs/vim/vimrc/
export ZTOP=$WORKSPACE/rcs/zsh/zshrc/
export RTOP=$WORKSPACE/rcs/

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
