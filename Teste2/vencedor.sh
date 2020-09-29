#!/bin/bash

MAIOR=0

i=1

for i in $@
do
        if [ ${i} -gt $MAIOR ] && [ ${i} -lt 21 ]
        then
                MAIOR=${i}
        fi
done

echo "==-==-==JOGO CONCLUIDO==-==-=="
echo
echo "O mais próximo de 21 é $MAIOR"
