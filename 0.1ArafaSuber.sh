#!/bin/bash

if [ $# == 2 ] ; then
	echo -e -n "\e[91m"&&figlet -f small "               0 . 1 ArafaSuber"
	echo -e "	\e[95m*\e[00m  \e[94mAutomate Subdomain Enumeration Using Best Tools:subfinder,sublist3r,amass\e[00m  \e[95m*\e[00m"
	echo -e "								\e[1m\e[90mCoded By: Abd Almoen Arafa (0.1Arafa)\e[00m"
	echo -e "\e[92m[+] \e[00m\e[97mRunning subfinder...\e[00m\n\n"
	subfinder -silent -d $1 -o MysubfinderfilEEEe0.txt
	echo -e "\e[97m--------------------------------------------------------------------------------\e[00m"
	echo -e "\e[92m[+] \e[00m\e[97mRunning sublist3r...\e[00m"
	sublist3r -n -d $1 -o Mysublist3rfilEEEe0.txt|grep -v "[\!]\|[-]\|#\|_\| "
	echo -e "\e[97m--------------------------------------------------------------------------------\e[00m"
	echo -e "\e[92m[+] \e[00m\e[97mRunning amass...\e[00m\n\n"
	amass enum -passive -nocolor -d $1 -o MyamassfilEEEe0.txt
	echo -e "\e[97m--------------------------------------------------------------------------------\e[00m"
	echo -e -n "\e[92m[*]\e[00m \e[97mSorting The Output Into File... \e[00m"
	cat MysubfinderfilEEEe0.txt Mysublist3rfilEEEe0.txt MyamassfilEEEe0.txt 2> /dev/null|sort -u > $2|grep "Nn0oOoOUtp2UtiIiShEREeEeE0e0"
	rm MysubfinderfilEEEe0.txt Mysublist3rfilEEEe0.txt MyamassfilEEEe0.txt 2> /dev/null
	echo -e "\e[32mDone\e[00m"
	echo -e "\e[92m[*] \e[00m\e[97mOutput File Info:\e[00m"
	echo -e "           \e[95mFile Name:  \e[00m\e[1m\e[94m$2\e[00m"
	echo -e -n "           \e[95mFile Chars: \e[00m\e[94m"&&wc -c $2|sed s/$2//&&echo -e -n "\e[00m"
	echo -e -n "           \e[95mTotal Unique Subdomains: \e[00m\e[3m\e[1m\e[94m"&&wc -l $2|sed s/$2//&&echo -e -n "\e[00m"
	echo -e "\e[1m\e[91m[!] \e[00m\e[1m\e[32mDone...\e[00m"
else
	echo -e "\e[1m\e[97mUsage: \e[0m\e[93mbash $0 <Domain> <Output_File_Name>\e[0m"
fi
#By: Abd Almoen Arafa (0.1Arafa)
#Age: 16
