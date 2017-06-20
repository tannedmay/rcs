#compdef dbm.sh

local -a options arguments

options=('-h:show this help message and exit' '-cname:ergon component name')
arguments=('reset_all:Clear all calm tables in IDF' 'reset:Clear mentioned calm table in IDF' 'seed:Register all calm tables in IDF' 'reset-seed:Register and reset all calm tables in IDF' 'reset_ergon:Reset all ergon task for Calm' 'reset-worker:Clean worker-state table' 'clear-ergon-workerstate:Clean worker-state table and ergon with calm tasks')
_describe 'values' options -- arguments

