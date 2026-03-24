# Set up environment for running PostgreSQL
# Must be "source"d from a bash-compatible shell

PGHOME=$HOME/pgsql
export PGDATA=$PGHOME/data
export PGHOST="localhost"
export PGPORT=5432
export LD_LIBRARY_PATH=$PGHOME/lib
export PATH=$PGHOME/bin:$PATH

alias p0="$PGHOME/bin/pg_ctl stop"
alias p1="$PGHOME/bin/pg_ctl -l $PGDATA/log start"
