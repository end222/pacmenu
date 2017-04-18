RESULT=$(dialog --stdout --title PacMan-Menu --menu "Choose one" -1 -1 6\
				1 Install \
				2 Remove  \
				3 "Clean packages"\
				4 "Update system"\
				5 "Update repos"\
				6 Nothing)

if [ $RESULT = 1 ]
	then
		INSTALL=$(dialog --stdout --title Install --inputbox\
				"Name of the package(s)" -1 -1);
		clear;
		sudo pacman -S $INSTALL;
fi

if [ $RESULT = 4 ]
        then
		clear;
                sudo pacman -Syu;
fi

