# Lock the first-picked skeleton
execute as @e[tag=amethyst_skeleton,tag=first,limit=1] run tag @s add locked

# Lock the second one (the current @s)
tag @s add locked

# +2 progress and happy sfx
scoreboard players add #mem challenge.amethyst_memory 2
function klawrz:sfx/sfx_happy

# Clear first state
tag @e[tag=amethyst_skeleton,tag=first,limit=1] remove first
data remove storage minecraft:amethyst_memory waiting

# Completion check (12 = 6 pairs)
execute as @e[tag=amethyst_memory_marker] at @s if score #mem challenge.amethyst_memory matches 12 run function klawrz:challenges/crimson_room/amethyst_room/amethyst_memory/amethyst_memory_complete