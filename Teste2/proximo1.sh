#!/bin/bash
echo "======================================================================================"
echo
echo "				PROXIMO JOGADOR"
echo
echo "======================================================================================"


JOGADOR=$1
SOMA=$2
JOGADORES=$3

if [ $JOGADOR -eq  1 ]
then
	JOG1=$(($SOMA+0))
	JOGADOR=$(($JOGADOR+1))
	JOGADORES=$(($JOGADORES-1))
	./gerar4.sh $JOGADORES 0 $JOGADOR $JOG1
elif [ $JOGADOR -eq 2 ]
then
	JOG2=$(($SOMA+0))
	JOGADOR=$(($JOGADOR+1))
	JOGADORES=$(($JOGADORES-1))
	JOG1=$4
	./gerar4.sh $JOGADORES 0 $JOGADOR $JOG1 $JOG2
elif [ $JOGADOR -eq 3 ]
then
        JOG3=$(($SOMA+0))
        JOGADOR=$(($JOGADOR+1))
        JOGADORES=$(($JOGADORES-1))
	JOG1=$4
	JOG2=$5
        ./gerar4.sh $JOGADORES 0 $JOGADOR $JOG1 $JOG2 $JOG3

elif [ $JOGADOR -eq 4 ]
then
        JOG4=$(($SOMA+0))
        JOGADOR=$(($JOGADOR+1))
        JOGADORES=$(($JOGADORES-1))
	JOG1=$4
	JOG2=$5
	JOG3=$6
        ./gerar4.sh $JOGADORES 0 $JOGADOR $JOG1 $JOG2 $JOG3 $JOG4
elif [ $JOGADORES -eq 1 ]
then
	CPU=$(($SOMA+0))
        JOGADOR=$(($JOGADOR+1))
        JOGADORES=$(($JOGADORES-1))
	JOG1=$4
	JOG2=$5
	JOG3=$6
	JOG4=$7
        ./gerar4.sh $JOGADORES 0 $JOGADOR $JOG1 $JOG2 $JOG3 $JOG4 $CPU
fi

