
#!/bin/bash 

i=1

for i in $@
do
        if [ ${i} -gt $MAIOR ]
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
echo "O maior é $MAIOR"
echo "Empates: $EMPATE"
