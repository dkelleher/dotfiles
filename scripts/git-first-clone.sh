#!/bin/sh

REPOSRC=$1
LOCALREPO=$2

# We do it this way so that we can abstract if from just git later on
LOCALREPO_VC_DIR=$LOCALREPO/.git

if [ ! -d $LOCALREPO_VC_DIR ]
then
    git clone $REPOSRC $LOCALREPO
else
    echo "Skipping existing git clone $REPOSRC $LOCALREPO"
fi

# End
