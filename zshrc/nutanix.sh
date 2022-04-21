# Nutanix specific
# IDF container volumes
export HOST_LOG_VOLUME="$HOME/idf/log_volume"
export HOST_DATA_VOLUME="$HOME/idf/data_volume"
export HOST_GFLAG_VOLUME="$HOME/idf/gflag_volume"
export HOST_CONFIG_VOLUME="$HOME/idf/config_volume"

# Main repo
export TOP=$HOME/main
export PC_CLIENT_TOP=$HOME/pc-client
export CCACHE_DIR=$HOME/.ccache
export DISTCC_HOSTS="distcc-0/24 distcc-1/24"
export PYTHONPATH=$PYTHONPATH:$TOP/.python
export PYTHONUSERBASE=$TOP/build/.python
export PATH=$PATH:$HOME/toolchain-builds/ec0f9ff70da10fcfca741ecf34e7426f25f59211
export TOOLCHAIN_VERSION=ec0f9ff70da10fcfca741ecf34e7426f25f59211
export GOPATH=$HOME/.go:$TOP/.go

# Calm repo
export DISABLE_ELASTIC=true
export DEPLOYMENT_TYPE=dev_local
export GADARZ_ASYNC=true
export XI_HEARTBEAT_ENABLE=true
export PGDATA=/var/lib/pgsql/11/data
export ENABLE_APLOS=false
export DISABLE_SSL_ROUTE=true
export UI_MODE=dev
export LANG=en_US.utf8
export APLOS_BUILD_IP=localhost
export APLOS_BUILD_USER=nutanix
export ZOOKEEPER_HOST_PORT_LIST=zk1:9876
export PATH=$PATH:/usr/local/go/bin:/usr/pgsql-11/bin/
export PATH=$PATH:$HOME/.go/bin:$TOP/.go/bin
export REQUESTS_CA_BUNDLE=/root/pypi.crt
export PYTHONPATH=$PYTHONPATH:$HOME/main/build/.python/nutanix_gateway-server.egg:$HOME/main/build/.python/nutanix_gateway-client.egg:$HOME/main/build/.python/nutanix_serviceability-client.egg:$HOME/main/build/.python/nutanix_ctrl-plane-client.egg:$HOME/main/build/.python/nutanix_ctrl-plane-pc-client.egg:$HOME/main/build/.python/nutanix_cdp-pc-client.egg
export APLOS_BUILD_IP=10.48.221.179
export APLOS_BUILD_USER=nutanix

# Arcanist stuff
arcpath=$HOME/arc
export PATH=${arcpath}/arcanist/bin:$PATH
if [ -f ${arcpath}/arcanist/resources/shell/bash-completion ]; then
    source ${arcpath}/arcanist/resources/shell/bash-completion
fi