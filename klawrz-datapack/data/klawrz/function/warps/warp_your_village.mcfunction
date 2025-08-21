# Set gamemode to Survival
gamemode survival @s

# Display titles
title @s title "Your Village"

# Warp player to destination
tp @s @e[tag=your_village__port, limit=1]

# Play warp sound
execute at @e[tag=your_village__port] run function klawrz:sfx/sfx_warp