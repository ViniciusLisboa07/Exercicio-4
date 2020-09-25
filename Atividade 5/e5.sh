#!/bin/bash

CONT=0
I=0
VALORES=(0 0 0 0 0 0 0 0 0 0 0 0 0 0)

echo "Por favor digite os 14 valores"

for CONT in "${VALORES[@]}"
do
	echo -n "Valor $I:"
	read VALOR
	VALORES[${I}]=$VALOR
	I=$(($I+1))
done

echo ${VALORES[@]}

./elimina.sh "${VALORES[@]}"
