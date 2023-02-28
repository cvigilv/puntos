#!/bin/sh
cat <<EOF | pmenu | sh &
IMG:./src/work.png	work
	IMG:./src/editor.png	Editor	konsole -e nvim
	IMG:./src/slack.png	Slack	slack
	IMG:./src/drawer.png	Zotero	zotero
	IMG:./src/bookmarks.png	Viewer	okular
	IMG:./src/todo.png	ToDo	konsole -e nvim -c "lua require('orgmode.api.agenda').agenda()" ~/agenda/journal.org
IMG:.//src/play.png	play
	IMG:./src/spotify.png	Spotify	spotify
	IMG:./src/steam.png	Steam	steam
	IMG:./src/discord.png	WhatsApp	whatsapp-nativefier
IMG:./src/settings.png	Settings
	IMG:./src/keyboard.png	Keymap	./src/_toggle_keymap.sh
	IMG:./src/shades.png	Eye-saver	redshift -x && redshift -o && notify-send -i ./src/shades.png  "redshift" "Adjusted color temperature based in location"
	IMG:./src/arandr.png	Screen-layout	arandr
	IMG:./src/power_menu.png	Power menu
		IMG:./src/reboot.png	Reboot	reboot
		IMG:./src/shutdown.png	Shutdown	shutdown now
		IMG:./src/sleep.png	Sleep	systemctl suspend
	IMG:./src/layout.png	Layout	bsp-layout next --layouts tall,rgrid,monocle && notify-send -i ./src/layout.png  "bsp-layout" "Current layout: $(bsp-layout get 1)"
EOF
