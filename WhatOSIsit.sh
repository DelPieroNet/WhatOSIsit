
#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

#Function helpPanel
function helpPanel(){
	echo -e "\n${yellowColour}[!]Uso ./WhatOSIsit.sh -i destination_ip ${endColour}"
	for i in $(seq 1 80);do echo -ne "${redColour}-"; done; echo -ne "${endColour}"
	echo -e "\n\n\t\t${grayColour}[-i]${endColour}${yellowColour} Especificar el host de destino.${endColour}"
	tput cnorm
}

function mode_ping(){

	for i in $(seq 1 50);do echo -ne "${blueColour}-"; done; echo -ne "${endColour}\n"
	/usr/bin/ping -c 1 $OPTARG | awk 'NR==2' | cut -d ' ' -f 6

	if [ "$(/usr/bin/ping -c 1 $OPTARG | awk 'NR==2' | cut -d ' ' -f 6)"  == "ttl=63" ] ;then
	for i in $(seq 1 50);do echo -ne "${blueColour}-"; done; echo -ne "${endColour}\n"

	echo -e "${yellowColour}( ttl 63 ) --> Linux ${endColour}"

	for i in $(seq 1 50);do echo -ne "${blueColour}-"; done; echo -ne "${endColour}\n"
	fi

	if [ "$(/usr/bin/ping -c 1 $OPTARG | awk 'NR==2' | cut -d ' ' -f 6)" == "ttl=127" ];then
	for i in $(seq 1 50);do echo -ne "${blueColour}-"; done; echo -ne "${endColour}\n"

	echo -e "${yellowColour}( ttl 127 ) --> Windows ${endColour}"

	for i in $(seq 1 50);do echo -ne "${blueColour}-"; done; echo -ne "${endColour}\n"
	else

	exit 1
	fi
}

parameter_counter=0;while getopts "i:h" arg; do
	case $arg in
	i)mode_ping; let parameter_counter+=1;;
	h)helpPanel;;
	esac
done

if [ $parameter_counter -eq 0  ]; then
	helpPanel
else
	if [ "$(echo $mode_ping)" == $parameter_counter=1 ]; then
		mode_ping
	fi
fi

tput cnorm
