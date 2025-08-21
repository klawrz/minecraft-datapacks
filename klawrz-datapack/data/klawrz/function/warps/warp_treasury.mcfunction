# Set gamemode to Adventure
gamemode adventure @s

# Display titles
title @s title "Treasury"

# Warp player to destination
tp @s @e[tag=treasury__port, limit=1]

# Play warp sound at destination
execute at @e[tag=treasury__port] run function klawrz:sfx/sfx_warp