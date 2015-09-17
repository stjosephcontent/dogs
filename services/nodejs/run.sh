#!/bin/bash

DIR=$(git rev-parse --show-toplevel)
source $DIR/vars.sh

docker run -P \
    --name tester-dogs-nodejs-foo
    --label io.sjc.orchestra.version="$ORCHESTRA_VERSION" \
    --label io.sjc.orchestra.project="$project" \
    --label io.sjc.orchestra.app.name="$appname" \
    --label io.sjc.orchestra.app.slug="$appslug" \
    --label io.sjc.orchestra.ref="$branch" \
    --label io.sjc.orchestra.service.name="$servicename" \
    --label io.sjc.orchestra.service.ambassador="$IS_AMBASSADOR" \
    --label io.sjc.orchestra.service.volumeMounted="no" \
    --name $containername \
    $imagebase-$containername:$branch