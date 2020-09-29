#!/bin/bash

echo "Quantos jogadores nessa partida?"
read JOGADORES

if [ $JOGADORES -le 1 ]
then
        echo "Valor inválido, são necessários no mínimo 2 jogadores"
elif [ $JOGADORES -eq 2 ]
then
        echo "Dois jogadores selecionados"
        ./gerar4.sh $JOGADORES 0 1
elif [ $JOGADORES -eq 3 ]
then
        echo "Três jogadores seleciondos"
        ./gerar4.sh $JOGADORES 0 1
elif [ $JOGADORES -eq 4 ]
then
        echo "Quatro jogadores selecionados"
        ./gerar4.sh $JOGADORES 0 1
elif [ $JOGADORES -eq 5 ]
then
        echo "Cinco jogadores selecionados"
        ./gerar4.sh $JOGADORES 0 1
else
        echo "Valor inváildo, no máximo cinco jogadores podem jogar"
fi
