# Amethyst Skeleton template
#execute as Aerms at @s run summon minecraft:wither_skeleton ~ ~ ~ {Invulnerable: 1b, Silent: 1b, PersistenceRequired: 1b, Rotation: [-90.0f, 60.0f], NoAI: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:budding_amethyst", Count: 1b}], HandItems: [{id: "minecraft:budding_amethyst", Count: 1b},{id: "minecraft:budding_amethyst", Count: 1b}], Tags: ["amethyst_skeleton","crimson_room__needs_reset"]}


# Emerald block
execute as @s[tag=sethead_emerald] as @s[tag=!flipped] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_memory/amethyst_memory_emerald

# Gold block
execute as @s[tag=sethead_gold] as @s[tag=!flipped] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_memory/amethyst_memory_gold

# Diamond block
execute as @s[tag=sethead_diamond] as @s[tag=!flipped] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_memory/amethyst_memory_diamond

# Copper block
execute as @s[tag=sethead_copper] as @s[tag=!flipped] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_memory/amethyst_memory_copper

# Iron block
execute as @s[tag=sethead_iron] as @s[tag=!flipped] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_memory/amethyst_memory_iron

# Netherite block
execute as @s[tag=sethead_netherite] as @s[tag=!flipped] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_memory/amethyst_memory_netherite

# Track completion
execute if score #mem challenge.amethyst_memory matches 12 as @e[tag=amethyst_memory_marker] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_memory/amethyst_memory_complete