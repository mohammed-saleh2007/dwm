#! /bin/bash

choice=$(echo -e "Games:\n  Minecraft\n  Combat Master\n\nPower" | dmenu -p "my best command list ;) " -l 69)

power(){
	mode=$(echo -e "shutdown\nreboot" | dmenu -p "power mode? Serious!?" -l 2)
	case "$mode" in
		shutdown) doas poweroff ;;
		reboot) doas reboot ;;
	esac
}


case "$choice" in 
	'  Minecraft' ) java -jar $HOME/ll.jar ;;
	'  Combat Master' ) $HOME/games/cm/CombatMaster.x86_64 ;;
	Power ) power  ;;
esac
