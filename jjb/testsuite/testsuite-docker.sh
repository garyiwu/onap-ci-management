#!/bin/bash
#
echo '============== CALLING SCRIPT TO CREATE DOCKER IMAGES ================='
cp $WORKSPACE/docker/* .
docker -D build -t openecomp/testsuite .
export REPO="localhost:10003"
for tag in $tags
do
  docker tag openecomp/testsuite:latest $REPO/openecomp/testsuite:$tag
  echo docker push $REPO/openecomp/testsuite:$tag
done
