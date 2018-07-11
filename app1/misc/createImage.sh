#!/bin/bash
docker build -t myrepo/app1-build -f Dockerfile  ../

if (( $? != 0 ))
then
  echo "Docker buid failed!"
  exit $?
fi

#echo $?
exit $?
