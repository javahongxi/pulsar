#!/bin/bash

goal=$1

if [ -z "$goal" ]; then
    goal=package
fi

mvn clean $goal -Dmaven.test.skip -Pcore-modules,-main \
    -DskipBuildDistribution=true \
    -Dlicense.skip=true -Drat.skip=true \
    -Dspotbugs.skip=true -Dcheckstyle.skip=true