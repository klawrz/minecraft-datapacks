# Prevent Allay leaving room
execute at @e[tag=saffron_door_marker] as @e[tag=amethyst_allay, dx=3, dy=3, dz=1] run tp @s ~3 ~5 ~-5

# Detect allay duplication
execute at @e[tag=amethyst_allay_marker] store result score @s entities if entity @e[type=allay, distance=..50]

# If there are 2 allays, run the function unless the allays have a specific tag
execute if score @s entities matches 2 as @e[tag=amethyst_allay] unless entity @s[tag=has_duplicated] at @e[tag=amethyst_allay_marker] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_allay

# Detect both purple flowers
execute as @e[tag=amethyst_flowerpot_marker] as @s[tag=!done_flowerpot] at @s if block ~ ~ ~ minecraft:potted_allium if block ~3 ~ ~ minecraft:potted_allium run function klawrz:challenges/crimson_room/amethyst_room/amethyst_flowerpot

# Detect all 4 chorus flowers
execute as @e[tag=amethyst_chorus_marker] as @s[tag=!done_chorus] at @s if block ~ ~ ~ chorus_plant if block ~3 ~ ~ chorus_plant if block ~ ~ ~3 chorus_plant if block ~3 ~ ~3 chorus_plant run function klawrz:challenges/crimson_room/amethyst_room/amethyst_chorus

# Handle cryptex
execute as @e[tag=amethyst_cryptex_marker] as @s[tag=!done_cryptex] at @s run function klawrz:challenges/crimson_room/amethyst_room/amethyst_cryptex/handle_amethyst_cryptex

# Amethyst Skeleton template
#execute as Aerms at @s run summon minecraft:wither_skeleton ~ ~ ~ {Invulnerable: 1b, Silent: 1b, PersistenceRequired: 1b, Rotation: [-90.0f, 60.0f], NoAI: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:budding_amethyst", Count: 1b}], HandItems: [{id: "minecraft:budding_amethyst", Count: 1b},{id: "minecraft:budding_amethyst", Count: 1b}], Tags: ["amethyst_skeleton","crimson_room__needs_reset"]}