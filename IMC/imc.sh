#!/usr/bin/env bash

printf "\nVamos calcular o IMC\n"
printf "\nMe diga o seu peso: "
read peso
printf "\nMe diga a sua altura: "
read altura

peso=$(echo "$peso" | sed 's/,/./')
altura=$(echo "$altura" | sed 's/,/./')

media=$(awk "BEGIN { printf \"%.2f\", $peso / ($altura * $altura) }")
printf "\n Seu imc eh: $media\n"

media=$(awk "BEGIN { printf \"%d\", $media + 0.5 }")

if [ "$media" -lt 18 ]; then
	printf "Está abaixo do peso ideal\n"
	exit 0
fi

if [ "$media" -gt 18 ] && [ "$media" -lt 25 ]; then
	printf "Está no peso ideal\n"
	exit 0
fi

if [ "$media" -gt 25 ]; then
	printf "Está com sobrepeso\n"
	exit 0
fi
