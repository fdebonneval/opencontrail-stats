#!/bin/bash

cat $1 | while read i
do
    git clone https://www.github.com/juniper/$i
done

mkdir html

for i in $(ls | grep ^contrail-*)
do
    gitinspector -F html ${i} > html/${i}.html
done

gitinspector contrail-* -F html > html/contrail.html
