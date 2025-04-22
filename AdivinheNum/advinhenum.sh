#!/usr/bin/env bash

#=== ADIVINHE UM NUMERO ===#

#=== Variaveis ============#
num_secret=$((RANDOM%100+1))
tentativas=10

#=== Processamento ========#
printf "\nEsse é um jogo de adivinhaca\nTente acertar o numero que esse programa pensar\n"

for i in $(seq 1 "$tentativas"); do

	printf "\nTentativa $i de $tentativas\n"

	printf "Digite um numero: "
	read chute

	if ! [ "$chute" -eq "$chute" ] 2>/dev/null; then
		printf "\nDigite apenas numero\n"
		continue
	fi

	if [ "$chute" -eq "$num_secret" ]; then
		printf "\nVoce acertou\nPARABENS\n"
		exit 0
	fi

	if [ "$chute" -lt "$num_secret" ]; then
		printf "\nO numero que voce digitou eh menor\n"

	elif [ "$chute" -gt "$num_secret" ]; then
		printf "\nO numero que voce digitou eh maior\n"
	fi
done

printf "\nVocê nao acertou o numero era: "$num_secret"\n"
