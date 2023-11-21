#!/bin/bash


current_dir=`pwd`

docker build -t cppcheck:0.3 --force-rm .
echo "Project directory: $current_dir"
echo "Report directory: $current_dir/cppcheck_report"


export LOCAL_USER=$(id -u)
export LOCAL_GROUP=$(id -g)


docker run -e LOCAL_USER -e LOCAL_GROUP -v $current_dir:/project cppcheck:0.3