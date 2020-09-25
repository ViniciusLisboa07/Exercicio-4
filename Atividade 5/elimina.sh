#!/bin/bash

VALORES=( "$@" )
MAIOR=0
MENOR=101
i=0

for i in "${VALORES[@]}"
do
	if [ "${i}" -eq 0 ]
	then
		MAIOR=${i}
		MENOR=${i}
	elif [ "${i}" -gt "$MAIOR" ]
	then
		MAIOR=${i}
	elif [ "${i}" -lt "$MENOR" ]
	then
		MENOR=${i}
	fi
done

QUANTIDADE=${#VALORES[@]}

for j in "${VALORES[@]}"
do
	if [ "$j" -eq "$MENOR" ]
	then
		unset 'VALORES[j]'
	elif [ "$j" -eq "$MAIOR" ]
	then
		unset 'VALORES[j]'
	fi
done

echo "O maior valor é $MAIOR"
echo "O menor valor é $MENOR"

echo
echo "${VALORES[@]}"
