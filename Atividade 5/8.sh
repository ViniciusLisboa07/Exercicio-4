#!/bin/bash
clear
I=0
CONT=0
for CONT in $*
do
echo "Parâmetro ${I}: $CONT"
I=$(($I+1))
done
