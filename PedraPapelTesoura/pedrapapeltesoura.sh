#!/usr/bin/env bash

#=== Variaveis ===#
maquina=$((RANDOM%3+1))
novamente=S

#=== Processamento ==#

while [ "$novamente" = "S" ] || [ "$novamente" = "s" ]; do
	
	printf "\nEscolha uma da opcoes:\n"
	printf "[1] Pedra\n"
	printf "[2] Papel\n"
	printf "[3] Tesoura\n"
	read opcao

	if [ "$opcao" -lt 1 ] 2>/dev/null ||\
	       	[ "$opcao" -gt 3 ] 2>/dev/null ||\
		! [ "$opcao" -eq "$opcao" ] 2>/dev/null; then
		printf "\nOpcao Invalida\n"
		sleep 1s
		clear
		continue
	fi

	printf "\nVoce escolheu $opcao\n"
	printf "A maquina escolher $maquina\n"

	if [ "$opcao" -eq 1 ] && [ "$maquina" -eq 3 ]; then
		printf "\nVoce ganhou! PARABENS!\n"
	elif [ "$opcao" -eq 2 ] && [ "$maquina" -eq 1 ]; then
		printf "\nVoce ganhou! PARABENS!\n"
	elif [ "$opcao" -eq 3 ] && [ "$maquina" -eq 2 ]; then
		printf "\nVoce ganhou! PARABENS!\n"
	elif [ "$opcao" -eq "$maquina" ]; then
		printf "\nDeu Empate!\n"
	else
		printf "\nVocê perdeu! TENTE NOVAMENTE!\n"
	fi

	printf "Jogar novamente?: [S/n]"
	read novamente
	[ -z "$novamente" ] && novamente=S
	clear
done

