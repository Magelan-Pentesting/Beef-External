lightblue=`tput setaf 14` 
green=`tput setaf 46`     
RED=`tput setaf 196`      
yellow=`tput setaf 11`    
purple=`tput setaf 129`   
reset=`tput sgr0`
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

echo "${yellow}Killing Python:"
killall -9 python3 
echo "${yellow}Killing Ruby:"
killall -9 ruby
echo "${yellow}Killing Ngrok:"
killall -9 ngrok 

echo "${blue}\n\n~Everything Is Clear Now!~"
