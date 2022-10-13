#!/bin/sh
cat <<EOF | pmenu | sh &
IMG:/home/carlos/documents/git/puntos/pmenu/src/work.png	work
	IMG:/home/carlos/documents/git/puntos/pmenu/src/editor.png	Editor	konsole -e nvim
	IMG:/home/carlos/documents/git/puntos/pmenu/src/slack.png	Slack	slack
	IMG:/home/carlos/documents/git/puntos/pmenu/src/drawer.png	Zotero	zotero
	IMG:/home/carlos/documents/git/puntos/pmenu/src/bookmarks.png	Viewer	okular
	IMG:/home/carlos/documents/git/puntos/pmenu/src/todo.png	ToDo	konsole -e nvim ~/documents/zk/refile.org
IMG:/home/carlos/documents/git/puntos/pmenu//src/play.png	play
	IMG:/home/carlos/documents/git/puntos/pmenu/src/spotify.png	Spotify	spotify
	IMG:/home/carlos/documents/git/puntos/pmenu/src/steam.png	Steam	steam
	IMG:/home/carlos/documents/git/puntos/pmenu/src/discord.png	WhatsApp	whatsapp-nativefier
IMG:/home/carlos/documents/git/puntos/pmenu/src/settings.png	Settings
	IMG:/home/carlos/documents/git/puntos/pmenu/src/keyboard.png	Keymap	/home/carlos/documents/git/puntos/pmenu/src/_toggle_keymap.sh
	IMG:/home/carlos/documents/git/puntos/pmenu/src/shades.png	Eye-saver	redshift -x && redshift -o && notify-send -i /home/carlos/documents/git/puntos/pmenu/src/shades.png  "redshift" "Adjusted color temperature based in location"
	IMG:/home/carlos/documents/git/puntos/pmenu/src/arandr.png	Screen-layout	arandr
	IMG:/home/carlos/documents/git/puntos/pmenu/src/power_menu.png	Power menu
		IMG:/home/carlos/documents/git/puntos/pmenu/src/reboot.png	Reboot	reboot
		IMG:/home/carlos/documents/git/puntos/pmenu/src/shutdown.png	Shutdown	shutdown now
		IMG:/home/carlos/documents/git/puntos/pmenu/src/sleep.png	Sleep	systemctl suspend
	IMG:/home/carlos/documents/git/puntos/pmenu/src/layout.png	Layout	bsp-layout next --layouts tall,rgrid,monocle && notify-send -i /home/carlos/documents/git/puntos/pmenu/src/layout.png  "bsp-layout" "Current layout: $(bsp-layout get 1)"
EOF
