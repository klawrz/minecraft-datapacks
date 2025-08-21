# This function is called from a command block after redstone is placed

# Prevent function from firing again
tag @s add done_sculk

# Audible success feedback
function klawrz:sfx/sfx_complete

# Visual success feedback
tellraw @p[scores={challenge.crimson_room.init=1}] "A passage opens somewhere."

# Open passageway
fill ~-7 ~ ~1 ~-7 ~1 ~1 air

# Command block usage:
# execute as @e[tag=viridian_door_marker] as @s[tag=!done_sculk] at @s run function klawrz:challenges/crimson_room/viridian_room/viridian_sculk