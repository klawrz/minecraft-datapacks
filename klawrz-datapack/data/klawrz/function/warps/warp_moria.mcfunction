# Set gamemode to Survival
gamemode survival @s

# Display titles
title @s title "Moria"
title @s subtitle "Warp Hub"

# Warp player to destination
tp @s @e[tag=moria_warp_hub__port, limit=1]

# Play warp sound
execute at @e[tag=moria_warp_hub__port] run function klawrz:sfx/sfx_warp