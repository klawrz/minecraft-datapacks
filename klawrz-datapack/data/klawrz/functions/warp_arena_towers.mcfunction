# Display titles
title @s title "PVP Arena"
title @s subtitle "Towers"

# Warp player to destination
tp @s @e[tag=ne_tower_stand, limit=1]

# Play warp sound
execute at @e[tag=ne_tower_stand] run function klawrz:warp_sound