#!/bin/bash

DIR=$(git rev-parse --show-toplevel)
source $DIR/vars.sh

if [ "$1" == '--hard' ]; then
    hs="hard"
else
    hs="soft"
fi

echo $hs


bash $DIR/stop.sh

for service in $services; do
    bash $DIR/services/$service/run.sh $service $hs || ( bash $DIR/services/$service/build.sh $service $hs && bash $DIR/services/$service/run.sh $service $hs )
done
