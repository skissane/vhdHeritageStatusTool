#!/bin/bash
AUTHORITY="$1"

[ "$AUTHORITY" = "National Trust" ] && {
	echo Q28147636
	exit
}
[ "$AUTHORITY" = "Victorian Heritage Inventory" ] && {
	echo Q28147635
	exit
}
[ "$AUTHORITY" = "Victorian Heritage Register" ] && {
	echo Q28147634
	exit
}
[ "$AUTHORITY" = "Vic. War Heritage Inventory" ] && {
	echo Q28147637
	exit
}

# Heritage Overlays
[[ "$AUTHORITY" = *City* ]] && {	# *City* means a Heritage Overlay
					# e.g. "Brimbank City", "Greater Geelong City", etc.
	echo Q17006517
	exit
}
[[ "$AUTHORITY" = *Shire* ]] && {	# *Shire* means a Heritage Overlay
					# e.g. "Glenelg Shire"
	echo Q17006517
	exit
}
[[ "$AUTHORITY" = *Borough* ]] && {	# *Borough* means a Heritage Overlay
					# e.g. "Queenscliffe Borough"
	echo Q17006517
	exit
}

# No idea, we give up. Update this script to make these errors go away
echo "ERROR_UNKNOWN_HERITAGE_AUTHORITY($AUTHORITY)"
exit
