#!/bin/bash
export NDCTL_ENABLE=n
export LD_LIBRARY_PATH=/scratch/nvm/pmcheck/bin/:/scratch/nvm/pmdk/src/debug
# For Mac OSX
export DYLD_LIBRARY_PATH=/scratch/nvm/pmcheck/bin/
export PMCheck="-dfoo -x2 -p1 -y -e -r2000"
echo "./run.sh ./memcached"
echo $@

$@
