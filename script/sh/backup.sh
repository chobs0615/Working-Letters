#!/bin/sh

#---- modify ----
back_dir=/home/backup
base_dir=/home/workspace
#----- done -----

curr=$(pwd)
cd ${base_dir}
dir=$(ls .)

if [ ! -d ${back_dir} ] ; then
    mkdir ${back_dir}
fi

for var in ${dir}
do
    if [ -d ${var} ] ; then
        last=${back_dir}/${var}-$(date --date='2 days ago' "+%Y-%m-%d").tgz
        target=${var}-$(date +%Y-%m-%d).tgz

        if [ -f ${last} ] ; then
            rm -rf ${last}
        fi

        tar cfz ${target} ${var}
        mv ${target} ${back_dir}
    fi
done

cd ${curr}
