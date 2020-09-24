#!/bin/bash 

JOGADOR=$1
SOMA=$2
JOGADORES=$3

JOG1=0
JOG2=0
JOG3=0
JOG4=0
CPU=0

if [ $JOGADORES -eq 1 ]
then
	CPU=$(($SOMA+$JOG1))
elif [ $JOGADOR -eq 1 ]
then
	JOG1=$(($SOMA+$JOG2))

elif [ $JOGADOR -eq 2 ]
then
	JOG2=$(($SOMA+$JOG3))
elif [ $JOGADOR -eq 3 ]
then
	JOG3=$(($SOMA+$JOG4))
else
	JOG4=$(($SOMA+$JOG5))
fi

echo "PROXIMO JOGADOR"
echo

JOGADOR=$(($JOGADOR+1))
JOGADORES=$(($JOGADORES-1))

./gerar4.sh $JOGADORES 0 $JOGADOR $JOG1 $JOG2 $JOG3 $JOG4 $CPU
