#!/bin/bash
WORKING_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd $WORKING_DIR

docker build -t myrepo/app1-build -f Dockerfile  ../

if (( $? != 0 ))
then
  echo "Docker buid failed!"
  exit $?
fi

#echo $?
exit $?
