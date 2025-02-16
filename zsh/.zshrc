export WORKSPACE=$HOME/Developer

# Load the 'init.sh'.
source $WORKSPACE/rcs/zsh/zshrc/init.sh # find all '.sh' files in zshrc, exclude 'init.sh'.
FILES_STR=$(find $WORKSPACE/rcs/zsh/zshrc -name '*.sh' -not -name 'init.sh') # `tr` is a find-and-replace utility.

# Outer () will convert the output of $() to array.
FILES=($(echo $FILES_STR | tr '\n' ' '))
for FILE in $FILES; do
    source $FILE
done

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
