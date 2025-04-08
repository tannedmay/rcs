# Add settings
#
# export AWS_DEFAULT_PROFILE=dev
export AWS_DEFAULT_PROFILE=prod
export VISUAL="subl -w"
export PATH="$HOME/kafka/kafka_2.13-4.0.0/bin:$PATH"
TTY_VAL=$(tty)
export GPG_TTY="$TTY_VAL"
