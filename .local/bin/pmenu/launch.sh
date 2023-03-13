#!/bin/sh
cat <<EOF | pmenu | sh &
IMG:/home/carlos/.local/bin/pmenu/src/work.png	work
	IMG:/home/carlos/.local/bin/pmenu/src/editor.png	Editor	konsole -e nvim
	IMG:/home/carlos/.local/bin/pmenu/src/slack.png	Slack	slack
	IMG:/home/carlos/.local/bin/pmenu/src/drawer.png	Zotero	zotero
	IMG:/home/carlos/.local/bin/pmenu/src/bookmarks.png	Viewer	okular
	IMG:/home/carlos/.local/bin/pmenu/src/todo.png	ToDo	konsole -e nvim -c "lua require('orgmode.api.agenda').agenda()" ~/agenda/journal.org
IMG:/home/carlos/.local/bin/pmenu//src/play.png	play
	IMG:/home/carlos/.local/bin/pmenu/src/spotify.png	Spotify	spotify
	IMG:/home/carlos/.local/bin/pmenu/src/steam.png	Steam	steam
	IMG:/home/carlos/.local/bin/pmenu/src/discord.png	WhatsApp	whatsapp-nativefier
IMG:/home/carlos/.local/bin/pmenu/src/settings.png	Settings
	IMG:/home/carlos/.local/bin/pmenu/src/keyboard.png	Keymap	/home/carlos/.local/bin/pmenu/src/_toggle_keymap.sh
	IMG:/home/carlos/.local/bin/pmenu/src/shades.png	Eye-saver	redshift -x && redshift -o && notify-send -i /home/carlos/.local/bin/pmenu/src/shades.png  "redshift" "Adjusted color temperature based in location"
	IMG:/home/carlos/.local/bin/pmenu/src/arandr.png	Screen-layout	arandr
	IMG:/home/carlos/.local/bin/pmenu/src/power_menu.png	Power menu
		IMG:/home/carlos/.local/bin/pmenu/src/reboot.png	Reboot	reboot
		IMG:/home/carlos/.local/bin/pmenu/src/shutdown.png	Shutdown	shutdown now
		IMG:/home/carlos/.local/bin/pmenu/src/sleep.png	Sleep	systemctl suspend
	IMG:/home/carlos/.local/bin/pmenu/src/layout.png	Layout	bsp-layout next --layouts tall,rgrid,monocle && notify-send -i /home/carlos/.local/bin/pmenu/src/layout.png  "bsp-layout" "Current layout: $(bsp-layout get 1)"
EOF
