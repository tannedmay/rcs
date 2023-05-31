if [[ $(uname -s) == Linux ]]
then
	export GOOS=linux 
	export GOARCH=amd64
else
	export GOOS=darwin
	export GOARCH=arm64
fi


export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
