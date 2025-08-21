# Display titles
title @s title "doozza" 
title @s subtitle "Village"

# Warp player to destination
tp @s @e[tag=doozza_village__port, limit=1]

# Play warp sound
execute at @e[tag=doozza_village__port] run function klawrz:sfx/sfx_warp