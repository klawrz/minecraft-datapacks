# Handle 1st cryptex slot
execute if block ~ ~ ~-1 crimson_button[powered=true] as @s[tag=!button_01_powered] at @s run function klawrz:challenges/crimson_room/amethyst_room/amethyst_cryptex/amethyst_cryptex_01
execute as @s[tag=button_01_powered] if block ~ ~ ~-1 crimson_button[powered=false] run tag @s remove button_01_powered

# Handle 2nd cryptex slot
execute if block ~1 ~ ~-1 crimson_button[powered=true] as @s[tag=!button_02_powered] at @s run function klawrz:challenges/crimson_room/amethyst_room/amethyst_cryptex/amethyst_cryptex_02
execute as @s[tag=button_02_powered] if block ~1 ~ ~-1 crimson_button[powered=false] run tag @s remove button_02_powered

# Handle 3rd cryptex slot
execute if block ~2 ~ ~-1 crimson_button[powered=true] as @s[tag=!button_03_powered] at @s run function klawrz:challenges/crimson_room/amethyst_room/amethyst_cryptex/amethyst_cryptex_03
execute as @s[tag=button_03_powered] if block ~2 ~ ~-1 crimson_button[powered=false] run tag @s remove button_03_powered

# Handle 4th cryptex slot
execute if block ~3 ~ ~-1 crimson_button[powered=true] as @s[tag=!button_04_powered] at @s run function klawrz:challenges/crimson_room/amethyst_room/amethyst_cryptex/amethyst_cryptex_04
execute as @s[tag=button_04_powered] if block ~3 ~ ~-1 crimson_button[powered=false] run tag @s remove button_04_powered

# Handle 5th cryptex slot
execute if block ~4 ~ ~-1 crimson_button[powered=true] as @s[tag=!button_05_powered] at @s run function klawrz:challenges/crimson_room/amethyst_room/amethyst_cryptex/amethyst_cryptex_05
execute as @s[tag=button_05_powered] if block ~4 ~ ~-1 crimson_button[powered=false] run tag @s remove button_05_powered

# Win condition
execute as @e[tag=amethyst_cryptex_marker] as @s[tag=!done_cryptex] at @s if block ~ ~ ~ magenta_glazed_terracotta[facing=south] if block ~1 ~ ~ magenta_glazed_terracotta[facing=west] if block ~2 ~ ~ magenta_glazed_terracotta[facing=north] if block ~3 ~ ~ magenta_glazed_terracotta[facing=east] if block ~4 ~ ~ magenta_glazed_terracotta[facing=east] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_cryptex/amethyst_cryptex_complete