#!/bin/bash
 
JOGADORES=$1
SOMA=$2
JOGADOR=$3
 
echo
echo "Gerando cartas..."
if [ $JOGADORES -eq 1 ]
then
        echo "Vez do CPU"
else
        echo "Vez do Jogador $JOGADOR"
fi
echo
CARTAS=($(shuf -i 1-13 -n 2))
CARTA1=${CARTAS[0]}
CARTA2=${CARTAS[1]}
if [ $SOMA -ne 0  ]
then
        SOMA=$(($SOMA+$CARTA1))
        echo "$CARTA1 é a nova carta dada ao jogador da rodada. Sua nova soma é $SOMA"
else
        SOMA=$(($CARTA1+$CARTA2))
	echo "O jogador da rodada recebeu a carta $CARTA1 e a carta $CARTA2. A soma da$
fi
 
if [ $SOMA -eq 21 ]
then
        echo "Você venceu!"
        echo
        echo "Jogo encerrado"
elif [ $SOMA -lt 21 ]
then
        echo "Você não atingiu 21"
        echo
	if [ $JOGADORES -eq 1 ]
        then 
                echo "O CPU receberá mais uma carta..."
                RESPOSTA="S"
                sleep 2
        else
                echo "Você quer receber mais uma carta? [S/N]"
                echo "Se sim e se o valor somada ultrapassar 21 você perderá"
                read RESPOSTA
        fi
        if [ "$RESPOSTA" == "S" ]
        then
		 ./gerar.sh $JOGADORES $SOMA $JOGADOR
        else
                echo "Você perdeu"
                if [ $JOGADORES -gt 1 ]
                then
                        ./proximo.sh $JOGADORES $JOGADOR
                elif [ $JOGADORES -eq 1 ]
                then
                        echo
                        echo "JOGO ENCERRADO"
                        echo
                fi
	fi
else
        echo "Você perdeu! Sua soma ultrapassou 21 e foi $SOMA"
        echo
        if [ $JOGADORES -gt 1 ]
        then
                ./proximo.sh $JOGADORES $JOGADOR
        elif [ $JOGADORES -eq 1 ]
        then
                echo
                echo "JOGO ENCERRADO"
		 echo
        fi
fi
echo
