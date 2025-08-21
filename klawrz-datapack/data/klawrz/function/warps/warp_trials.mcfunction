# Set gamemode to Adventure
gamemode adventure @s

# Display titles
title @s title "Trials"

# Warp player to destination
tp @s @e[tag=trials__port, limit=1]

# Play warp sound
execute at @e[tag=trials__port] run function klawrz:sfx/sfx_warp