# Set gamemode to Adventure
gamemode adventure @s

# Display titles
title @s title "PVP Hub"

# Warp player to destination
tp @s @e[tag=pvp_hub__port, limit=1]

# Play warp sound
execute at @e[tag=pvp_hub__port] run function klawrz:sfx/sfx_warp