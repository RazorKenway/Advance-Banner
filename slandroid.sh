clear

#color
r='\e[1;31m'
g='\e[1;32m'
y='\e[1;33m'
b='\e[1;34m'
p='\e[1;35m'
lb='\e[1;36m'

#--------------------------------------------------------------------------------------------
function font() {
    echo -e $y "What is Your Banner Font Style ? "
    echo 
    echo -e $y " Sample Fonts "
    echo -e $g "                  1- figlet "
    echo -e $g "                  2- toilet "
    echo
    echo -e $y "Choose an Option  》》》 : \c "
    read varf
    echo
}
#--------------------------------------------------------------------------------------------  
function ban() {
#create temp
        
        echo "cd" > Temp2.txt
        echo "cd /data/data/com.termux/files/usr/etc/" > Temp1.txt
        echo "PS1='\[\e[31m\]>\[\e[0m\]\[\e[93m\]\A\[\e[0m\]\[\e[31m\]>\[\e[0m\]\[\e[36m\]\w\[\e[0m\]\[\e[31m\]>\[\e[0m\]\[\e[39m\]\n\[\e[0m\]\[\e[31m\]>>>\[\e[0m\]\[\e[32m\]'" > Temp0.txt

#Delete Old Files
        rm -rf /data/data/com.termux/files/usr/etc/motd
        rm -rf /data/data/com.termux/files/usr/etc/zshrc
        rm -rf /data/data/com.termux/files/usr/etc/slandroid
        rm -rf /data/data/com.termux/files/usr/etc/bash.bashrc

#Replacing New files
        cp slandroid /data/data/com.termux/files/usr/etc
        cp d2 /data/data/com.termux/files/usr/etc
        cp d3 /data/data/com.termux/files/usr/etc
        cd /data/data/com.termux/files/usr/etc
        cp d2 bash.bashrc
        cp d3 zshrc
        cd /data/data/com.termux/files/home/Advance-Banner/Data_Files

# Dual injecting
        cat "Temp0.txt" >> /data/data/com.termux/files/usr/etc/zshrc
        cat "Temp1.txt" >> /data/data/com.termux/files/usr/etc/zshrc
        cat "Temp.txt" >> /data/data/com.termux/files/usr/etc/zshrc
        cat "Temp2.txt" >> /data/data/com.termux/files/usr/etc/zshrc

        cat "Temp0.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
        cat "Temp1.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
        cat "Temp.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
        cat "Temp2.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc

#delete temp files
        rm -rf Temp.txt
        rm -rf Temp2.txt
        rm -rf Temp1.txt
        rm -rf Temp0.txt
        figlet Finish | lolcat
        echo -e $r " Get New Session Or Restart Termux "
}
#--------------------------------------------------------------------------------------------
	
function end() {
    rm -rf /data/data/com.termux/files/usr/etc/zshrc
    cp zshrc /data/data/com.termux/files/usr/etc

#injecting 

     cat "cls_SL_ANDROID.txt" >> /data/data/com.termux/files/usr/etc/zshrc
     cat "cowsay_SL_ANDROID.txt" >> /data/data/com.termux/files/usr/etc/zshrc
     cat "ban_SL_ANDROID.txt" >> /data/data/com.termux/files/usr/etc/zshrc

#delete temp
     rm -rf cls_SL_ANDROID.txt
     rm -rf cowsay_SL_ANDROID.txt
     rm -rf ban_SL_ANDROID.txt

     figlet Finish | lolcat
     echo -e $r " Please Restart Termux"
}
#--------------------------------------------------------------------------------------------

function req() {
    mkdir Data_Files
    cp d2 /data/data/com.termux/files/home/Advance-Banner/Data_Files/
    cp d3 /data/data/com.termux/files/home/Advance-Banner/Data_Files/
    gem install lolcat
    cd Data_Files
}

#---------------------------------------------------------------------------------------------

#banner

figlet SL Android | lolcat --animate
echo -e "\033[1;31;40m                   Tool By Razor Kenway"
echo -e "\033[1;31;40m                       SL Android  "
echo -e "\033[1;32;40m                        Srilanka  "
echo 
echo
echo -e "\033[1;33m[1] \033[1;32;40m Evil-Eye Banner            (Normal)    "
echo -e "\033[1;33m[2] \033[1;32;40m Evil-Eye Banner            (Animation) "
echo -e "\033[1;33m[3] \033[1;32;40m Customize Banner           (Your Design)"
echo -e "\033[1;33m[4] \033[1;32;40m Customize Animation Banner (Your Design)"
echo -e "\033[1;33m[5] \033[1;32;40m Photo Banner               (Your Design)"
echo

echo -e $y "Enter Your Choice 》》》 \c "
read varch
if [[ $varch == 1 || $varch == 01 ]]
then 
	req
	font
	if [[ $varf == 1 || $varf == 01 ]]
	then
		echo -e $y " What is Your Banner Name ?  : \c "
		read varBName
		echo
#cowsay
		echo -e $y " What is Your Cowsay Name ? : \c "
		read varCName
        echo
#temp
        echo "cowsay -f eyes "$varCName" | lolcat " > cowsay_SL_ANDROID.txt
        echo "figlet "$varBName" | lolcat " > ban_SL_ANDROID.txt
        echo "clear" > cls_SL_ANDROID.txt
        
#delete old zshrc        
        end
	elif [[ $varf == 2 || $varf == 02 ]]
	then
		echo -e $y " What is Your Banner Name ?  : \c "
		read varBName   
		echo
		#cowsay
		echo -e $y " What is Your Cowsay Name ? : \c "
		read varCName
		echo
		#temp
		echo "cowsay -f eyes "$varCName" | lolcat " > cowsay_SL_ANDROID.txt
		echo "toilet "$varBName" | lolcat " > ban_SL_ANDROID.txt
		echo "clear" > cls_SL_ANDROID.txt
			
			#delete old zshrc        
		end
	else
		echo -e "\e[1;93m [!] Invalid option! Please Select Valid One\e[0m\n"
	fi
 
elif [[ $varch == 2 || $varch == 02 ]]
then
	req
	font
	if [[ $varf == 1 || $varf == 01 ]]
	then
		echo -e $y " What is Your Banner Name ?  : \c "
		read varBName
		echo
		#cowsay
		echo -e $y " What is Your Cowsay Name ? : \c "
		read varCName
		echo
		#temp   
		echo "cowsay -f eyes "$varCName" | lolcat " > cowsay_SL_ANDROID.txt
		echo "figlet "$varBName" | lolcat --animate " > ban_SL_ANDROID.txt
		echo "clear" > cls_SL_ANDROID.txt
		        
		#delete old zshrc
		end
			 
	elif [[ $varf == 2 || $varf == 02 ]]
	then
		echo -e $y " What is Your Banner Name ?  : \c "
		read varBName
		echo
		#cowsay
		echo -e $y " What is Your Cowsay Name ? : \c "
		read varCName
		echo
		#temp
		echo "cowsay -f eyes "$varCName" | lolcat " > cowsay_SL_ANDROID.txt
		echo "toilet "$varBName" | lolcat --animate " > ban_SL_ANDROID.txt
		echo "clear" > cls_SL_ANDROID.txt
		
		#delete old zshrc        
		end
	else
		echo -e "\e[1;93m [!] Invalid option! Please Select Valid One\e[0m\n"
	fi
fi
if [[ $varch == 3 || $varch == 03 ]]
then
	req
	#create temp
	nano slandroid
	echo "cat slandroid | lolcat --spread=1 --speed=100 " > Temp.txt
	echo "cd" > Temp2.txt
	echo "cd /data/data/com.termux/files/usr/etc/" > Temp1.txt
	echo "PS1='\[\e[31m\]>\[\e[0m\]\[\e[93m\]\A\[\e[0m\]\[\e[31m\]>\[\e[0m\]\[\e[36m\]\w\[\e[0m\]\[\e[31m\]>\[\e[0m\]\[\e[39m\]\n\[\e[0m\]\[\e[31m\]>>>\[\e[0m\]\[\e[32m\]'" > Temp0.txt
	
	
	#Delete Old Files
	rm -rf /data/data/com.termux/files/usr/etc/motd
	rm -rf /data/data/com.termux/files/usr/etc/zshrc
	rm -rf /data/data/com.termux/files/usr/etc/slandroid
	rm -rf /data/data/com.termux/files/usr/etc/bash.bashrc
	
	#Replacing New files
	cp slandroid /data/data/com.termux/files/usr/etc/
	cp d2 /data/data/com.termux/files/usr/etc/
	cp d3 /data/data/com.termux/files/usr/etc/
	cd /data/data/com.termux/files/usr/etc/
	cp d2 bash.bashrc
	cp d3 zshrc
	cd /data/data/com.termux/files/home/Advance-Banner/Data_Files/
	
	# Dual injecting
	cat "Temp0.txt" >> /data/data/com.termux/files/usr/etc/zshrc
	cat "Temp1.txt" >> /data/data/com.termux/files/usr/etc/zshrc
	cat "Temp.txt" >> /data/data/com.termux/files/usr/etc/zshrc
	cat "Temp2.txt" >> /data/data/com.termux/files/usr/etc/zshrc
	
	cat "Temp0.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
	cat "Temp1.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
	cat "Temp.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
	cat "Temp2.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
	
	#delete temp files
	rm -rf Temp.txt
	rm -rf Temp2.txt
	rm -rf Temp1.txt
	rm -rf Temp0.txt
	figlet Finish | lolcat
	echo -e $r " Get New Session Or Restart Termux "

elif [[ $varch == 4 || $varch == 04 ]]
then
	req
	#create temp
	nano slandroid
	echo "cat slandroid | lolcat --animate --spread=1 --speed=100 " > Temp.txt
	echo "cd" > Temp2.txt
	echo "cd /data/data/com.termux/files/usr/etc/" > Temp1.txt
	echo "PS1='\[\e[31m\]>\[\e[0m\]\[\e[93m\]\A\[\e[0m\]\[\e[31m\]>\[\e[0m\]\[\e[36m\]\w\[\e[0m\]\[\e[31m\]>\[\e[0m\]\[\e[39m\]\n\[\e[0m\]\[\e[31m\]>>>\[\e[0m\]\[\e[32m\]'" > Temp0.txt
	
	#Delete Old Files
	rm -rf /data/data/com.termux/files/usr/etc/motd
	rm -rf /data/data/com.termux/files/usr/etc/zshrc
	rm -rf /data/data/com.termux/files/usr/etc/slandroid
	rm -rf /data/data/com.termux/files/usr/etc/bash.bashrc
	
	#Replacing New files
	cp slandroid /data/data/com.termux/files/usr/etc/
	cp d2 /data/data/com.termux/files/usr/etc/
	cp d3 /data/data/com.termux/files/usr/etc/
	cd /data/data/com.termux/files/usr/etc/
	cp d2 bash.bashrc
	cp d3 zshrc
	cd /data/data/com.termux/files/home/Advance-Banner/Data_Files/
	
	# Dual injecting
	cat "Temp0.txt" >> /data/data/com.termux/files/usr/etc/zshrc
	cat "Temp1.txt" >> /data/data/com.termux/files/usr/etc/zshrc
	cat "Temp.txt" >> /data/data/com.termux/files/usr/etc/zshrc
	cat "Temp2.txt" >> /data/data/com.termux/files/usr/etc/zshrc
	
	cat "Temp0.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
	cat "Temp1.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
	cat "Temp.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
	cat "Temp2.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
	
	#delete temp files
	rm -rf Temp.txt
	rm -rf Temp2.txt
	rm -rf Temp1.txt
	rm -rf Temp0.txt
	figlet Finish | lolcat
	echo -e $r " Get New Session Or Restart Termux "
else
	echo -e "\e[1;93m [!] Invalid option! Please Select Valid One\e[0m\n"

fi
if [[ $varch == 5 || $varch == 05 ]]
then
	echo -e $y "Go to the Your Storage And insert Picture Into the Folder"
	echo
	echo -e $g "What is Your Picture Name : \c "
	read varpic
	cd
	cd /sdcard/INSERT_YOUR_PICTURE
	cp $varpic /data/data/com.termux/files/home/Advance-Banner
	cd /data/data/com.termux/files/home/Advance-Banner
	jp2a $varpic >> t
	echo "cat t | lolcat --spread=1 --speed=100 " > Temp.txt
	echo "cd" > Temp2.txt
	echo "cd /data/data/com.termux/files/usr/etc/" > Temp1.txt
	echo "PS1='\[\e[31m\]>\[\e[0m\]\[\e[93m\]\A\[\e[0m\]\[\e[31m\]>\[\e[0m\]\[\e[36m\]\w\[\e[0m\]\[\e[31m\]>\[\e[0m\]\[\e[39m\]\n\[\e[0m\]\[\e[31m\]>>>\[\e[0m\]\[\e[32m\]'" > Temp0.txt
	
	#Delete Old Files
	rm -rf /data/data/com.termux/files/usr/etc/motd
	rm -rf /data/data/com.termux/files/usr/etc/zshrc
	rm -rf /data/data/com.termux/files/usr/etc/slandroid
	rm -rf /data/data/com.termux/files/usr/etc/bash.bashrc
	
	#Replacing New files
	cp t /data/data/com.termux/files/usr/etc/
	cp d2 /data/data/com.termux/files/usr/etc/
	cp d3 /data/data/com.termux/files/usr/etc/
	cd /data/data/com.termux/files/usr/etc/
	cp d2 bash.bashrc
	cp d3 zshrc
	cd /data/data/com.termux/files/home/Advance-Banner/
	
	# Dual injecting
	cat "Temp0.txt" >> /data/data/com.termux/files/usr/etc/zshrc
	cat "Temp1.txt" >> /data/data/com.termux/files/usr/etc/zshrc
	cat "Temp.txt" >> /data/data/com.termux/files/usr/etc/zshrc
	cat "Temp2.txt" >> /data/data/com.termux/files/usr/etc/zshrc
	
	cat "Temp0.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
	cat "Temp1.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
	cat "Temp.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
	cat "Temp2.txt" >> /data/data/com.termux/files/usr/etc/bash.bashrc
	
	#delete temp files
	#rm -rf Temp.txt
	#rm -rf Temp2.txt
	#rm -rf Temp1.txt
	#rm -rf Temp0.txt
	figlet Finish | lolcat
	echo -e $r " Get New Session Or Restart Termux "
else
	echo -e "\e[1;93m [!] Invalid option! Please Select Valid One\e[0m\n"
fi
