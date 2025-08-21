# Button 1
execute as @e[tag=amethyst_cryptex_marker] at @s if block ~ ~ ~-1 crimson_button[powered=true] unless entity @s[tag=btn_01] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_cryptex/press_01
execute as @e[tag=amethyst_cryptex_marker,tag=btn_01] if block ~ ~ ~-1 crimson_button[powered=false] run tag @s remove btn_01

# Button 2
execute as @e[tag=amethyst_cryptex_marker] at @s if block ~1 ~ ~-1 crimson_button[powered=true] unless entity @s[tag=btn_02] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_cryptex/press_02
execute as @e[tag=amethyst_cryptex_marker,tag=btn_02] if block ~1 ~ ~-1 crimson_button[powered=false] run tag @s remove btn_02

# Button 3
execute as @e[tag=amethyst_cryptex_marker] at @s if block ~2 ~ ~-1 crimson_button[powered=true] unless entity @s[tag=btn_03] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_cryptex/press_03
execute as @e[tag=amethyst_cryptex_marker,tag=btn_03] if block ~2 ~ ~-1 crimson_button[powered=false] run tag @s remove btn_03

# Button 4
execute as @e[tag=amethyst_cryptex_marker] at @s if block ~3 ~ ~-1 crimson_button[powered=true] unless entity @s[tag=btn_04] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_cryptex/press_04
execute as @e[tag=amethyst_cryptex_marker,tag=btn_04] if block ~3 ~ ~-1 crimson_button[powered=false] run tag @s remove btn_04

# Button 5
execute as @e[tag=amethyst_cryptex_marker] at @s if block ~4 ~ ~-1 crimson_button[powered=true] unless entity @s[tag=btn_05] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_cryptex/press_05
execute as @e[tag=amethyst_cryptex_marker,tag=btn_05] if block ~4 ~ ~-1 crimson_button[powered=false] run tag @s remove btn_05

# Win condition
execute as @e[tag=amethyst_cryptex_marker,tag=!done_cryptex] at @s if block ~ ~ ~ magenta_glazed_terracotta[facing=south] if block ~1 ~ ~ magenta_glazed_terracotta[facing=west] if block ~2 ~ ~ magenta_glazed_terracotta[facing=north] if block ~3 ~ ~ magenta_glazed_terracotta[facing=east] if block ~4 ~ ~ magenta_glazed_terracotta[facing=east] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_cryptex/amethyst_cryptex_complete

# Solution
#  v v < ^ >