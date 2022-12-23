# Display titles
title @s title "PVP Hub"
title @s subtitle "2nd Floor"

# Warp player to destination
tp @s @e[tag=pvp_hub_floor_2__port, limit=1]

# Play warp sound
execute at @e[tag=pvp_hub_floor_2__port] run function klawrz:warp_sound