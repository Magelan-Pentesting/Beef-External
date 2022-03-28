#!/bin/bash


lightblue=`tput setaf 14` 
green=`tput setaf 46`     
RED=`tput setaf 196`      
yellow=`tput setaf 11`    
purple=`tput setaf 129`   
reset=`tput sgr0`
clear
echo -e "${yellow}    ____             __       _____     "
echo -e "${yellow}   | __ )  ___  ___ / _|     | ____|_  _"
echo -e "${yellow}   |  _ \ / _ \/ _ \ |_ _____|  _| \ \/ /"
echo -e "${yellow}   | |_) |  __/  __/  _|_____| |___ >  <" 
echo -e "${yellow}   |____/ \___|\___|_|       |_____/_/\_\ \n" 
echo -e "${purple}	 	       #>Author:Magelan"                                                    
echo -e "${purple}		       #>Github:Magelan-Pentesting"
echo -e "${purple}                     #>Youtube:Magelan-Pentesting"
echo -e "${purple}		       #>Version:2.4\n\n"
if [[ $(whoami) == "root" ]];then
	echo -e "`tput setaf 196`[-]Please run this script without root privilages..\n\n~Beef Ex~"
	exit
fi
check=$(lsb_release -a) &>/dev/null
if [[ $(echo $check | cut -d ":" -f 2 | cut -d "D" -f 1) == " Ubuntu"  ]];then
	sudo apt update -y
	sudo apt install ubuntu-dev-tools -y
else
	sudo apt update -y
fi
sudo chown -R $(whoami):$(whoami) *
sudo chown -R $(whoami):$(whoami) ../Beef-External/
echo ${green}
echo "Installing Beef.." 
echo "--------------------" && sleep 2
sudo apt install git -y
sudo apt-get install libsqlite3-dev -y
sudo apt-get install libcurl4-openssl-dev -y 
sudo apt install nodejs -y 
#Necessery Packages For Ubuntu Users
sudo apt install ruby -y
sudo apt install ruby-dev -y
sudo apt install apache2 -y
git clone https://github.com/beefproject/beef.git
sudo gem update
sudo gem install bundler
cd beef/ && bundle install
cd ../
sudo gem install sqlite3
sudo gem install curb -v '0.9.11' --source 'https://rubygems.org/' 
./beef/install
echo "Installing Ngrok.." 
echo "--------------------" 
sudo wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -O ngrok/ngrok-stable-linux-amd64.zip
unzip ngrok/ngrok-stable-linux-amd64.zip -d ngrok/
sudo rm ngrok/ngrok-stable-linux-amd64.zip
echo -e "${yellow}[+]${green}Please Input Your Authtoken/Gebe Deinen Authotoken ein:\n\n"
echo -e "${yellow}[ENG]${lightblue}~${yellow}If you don't know what your authtoken is, please enter 'authtoken' or 'help'\n\n"
read -p "$(echo -e '\n\n')${lightblue}Beef-Ex${purple}@${green}$(whoami)${RED}[${reset}~${RED}]${purple}" au
if [ $au == "authtoken" ] || [ $au == "help" ];then
	firefox https://youtu.be/5WAz8vbQ8xw &> /dev/null &
	echo -e "\n${yellow}[ENG]${lightblue}~${yellow}Please Watch The Opened Video.\n\n"
	echo -e "${yellow}[+]${green}Please Input Your Authtoken/Lutfen Authtoken'ini Gir:\n"
	read -p "$(echo -e '\n\n')${lightblue}Beef-Ex${purple}@${green}$(whoami)${RED}[${reset}~${RED}]${purple}" au
fi
./ngrok/ngrok authtoken $au
clear
echo "${yellow}    ____             __       _____     "
echo "${yellow}   | __ )  ___  ___ / _|     | ____|_  _"
echo "${yellow}   |  _ \ / _ \/ _ \ |_ _____|  _| \ \/ /"
echo "${yellow}   | |_) |  __/  __/  _|_____| |___ >  <" 
echo "${yellow}   |____/ \___|\___|_|       |_____/_/\_\ \n" 
echo "${purple}	 	       #>Author:Magelan"                                                    
echo "${purple}		       #>Github:Magelan-Pentesting"
echo "${purple}			   #>Youtube:Magelan-Pentesting"
echo "${purple}		       #>Version:2.4\n\n"
echo -e "\n${green}Everything looks ok. You can run the script now."
