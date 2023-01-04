# Display titles
title @s title {"text":"Crimson Room", "color":"red"}
title @s subtitle "Escape the Crimson Room"

# Warp player to destination
tp @s @e[tag=crimson_room__port, limit=1]

# Play warp sound
execute at @e[tag=crimson_room__port] run function klawrz:sfx/sfx_warp
