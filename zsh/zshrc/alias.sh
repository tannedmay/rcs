alias kctx="kubectx"
alias kns="kubens"
# alias k="kubecolor"

alias find_in_python="find ./ -name '*.py' -type f|xargs grep"
alias find_in_java="find ./ -name '*.java' -type f|xargs grep"
alias find_in_go="find ./ -name '*.go' -type f|xargs grep"
alias find_in_js="find ./ -name '*.js*' -type f|xargs grep"
alias vimzshrc='vim $HOME/.zshrc && source $_'
alias allssh='i2cssh $_'
alias watch='watch '

export TOP=$WORKSPACE/api-app/
export VTOP=$WORKSPACE/rcs/vim/vimrc/
export ZTOP=$WORKSPACE/rcs/zsh/zshrc/
export RTOP=$WORKSPACE/rcs/

alias rcs="cd $RTOP"
alias top="cd $TOP"
alias ws="cd $WORKSPACE"
alias secret='cd $WORKSPACE/secrets'
alias members='cd $WORKSPACE/members/web-solutions'
alias main='cd $WORKSPACE/main/web-solutions'
alias deploy='cd $DEPLOY'
alias assignments='cd $WORKSPACE/assignments'
alias data='cd $WORKSPACE/data'

# PAF specific
alias build_swag='cd $TOP && swag init -g routes/routes.go && swag fmt -g routes/routes.go'
alias reload_swagger='docker restart swagger-ui'
alias api='cd $TOP && go build -o ./bin/api-vidya ./main && ./bin/api-vidya'
alias mq='cd $TOP && go build -o ./bin/mq ./main/mq_subscriber && ./bin/mq'
alias asg='cd $TOP && go build -o ./bin/asg ./main/asg && ./bin/asg'
alias script='cd $TOP && go build -o ./bin/script ./scripts && ./bin/script'
alias build_api='cd $TOP && go build -o ./bin/api-vidya ./main && go build -o ./bin/script ./scripts && go build -o ./bin/mq ./main/mq_subscriber'
alias sanity='cd $TOP && build_api && gota && cd -'
