#!/bin/bash
WORKING_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker build -t myrepo/app1-build -f $WORKING_DIR/Dockerfile  $WORKING_DIR/../

if (( $? != 0 ))
then
  echo "Docker buid failed!"
  exit $?
fi

#echo $?
exit $?
