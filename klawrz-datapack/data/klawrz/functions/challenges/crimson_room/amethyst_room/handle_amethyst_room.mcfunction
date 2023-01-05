# Prevent Allay leaving room
execute at @e[tag=saffron_door_marker] as @e[tag=amethyst_allay, dx=3, dy=3, dz=1] run tp @s ~3 ~5 ~-5

# Detect allay duplication
execute at @e[tag=amethyst_allay_marker] store result score @s entities if entity @e[type=allay, distance=..50]

# If there are 2 allays, run the function unless the allays have a specific tag
execute if score @s entities matches 2 as @e[tag=amethyst_allay] unless entity @s[tag=has_duplicated] at @e[tag=amethyst_allay_marker] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_allay

# Detect both purple flowers
execute as @e[tag=amethyst_flowerpot_marker] as @s[tag=!done] at @s if block ~ ~ ~ minecraft:potted_allium if block ~3 ~ ~ minecraft:potted_allium run function klawrz:challenges/crimson_room/amethyst_room/amethyst_flowerpot
