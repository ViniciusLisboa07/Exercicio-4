#!/bin/bash

MAIOR=0

i=1

for i in $@
do
        if [ ${i} -gt $MAIOR ] && [ ${i} -le 21 ]
        then
                MAIOR=${i}
        fi
        for j in $@
        do
                if [ ${i} -eq ${j} ]
                then
                        EMPATE=$(($EMPATE+1))
                fi
        done
        EMPATE=$(($EMPATE-1))
done
EMPATE=$(($EMPATE/2))

echo "==-==-==JOGO CONCLUIDO==-==-=="
echo
echo "O mais próximo de 21 é $MAIOR"
echo "Empates: $EMPATE"

