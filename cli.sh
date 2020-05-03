#!/bin/bash

Projects=(
  "medical-procedures-client"
  "medical-procedures-server"
)

if [ "$1" = "setup" ]
then
    for Project in "${Projects[@]}"
      do
        git clone "https://github.com/renanbet/$Project.git"
      done
elif [ "$1" = "update" ]
then
    for Project in "${Projects[@]}"
      do
        cd $Project
        git pull origin $2
        cd ..
      done
fi
