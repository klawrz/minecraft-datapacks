# Set gamemode to Adventure
gamemode adventure @s

# Display titles
title @s title "Warp Hub"

# Warp player to destination
tp @s @e[tag=warp_hub__port, limit=1]

# Play warp sound
execute at @e[tag=warp_hub__port] run function klawrz:sfx/sfx_warp