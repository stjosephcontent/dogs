#!/bin/bash

DIR=$(git rev-parse --show-toplevel)
source $DIR/vars.sh

containername=$project-$appname-$branch-nodejs
imagename=sean9999/$project-$appname-nodejs:$branch

docker rm 2> $imagename

docker run -it $imagename sh -c 'exec npm start'