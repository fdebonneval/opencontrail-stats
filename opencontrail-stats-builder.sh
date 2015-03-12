#!/bin/bash

cat $1 | while read i
do
    git clone https://www.github.com/juniper/$i
done

mkdir html

for i in ls contrail*
do
    gitinspector $i -F html > html/${i}.html
done

gitinspector contrail-* -F html > html/contrail.html
