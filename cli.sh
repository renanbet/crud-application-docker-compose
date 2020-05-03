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

    arquivo=".env"

    while IFS== read var1 var2; do
        echo $var1 '-' $var2
        sed -i "s/#$var1/$var2/" docker-compose.yml
    done < "$arquivo"
elif [ "$1" = "pull" ]
then
    for Project in "${Projects[@]}"
      do
        cd $Project
        git pull origin $2
        cd ..
      done
fi