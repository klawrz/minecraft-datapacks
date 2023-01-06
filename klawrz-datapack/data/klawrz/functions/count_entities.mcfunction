# All entities
tellraw @s "Counting entities"
execute store result score ents entities if entity @e
scoreboard players list ents

# Markers
tellraw @s "Counting markers"
execute store result score ents entities if entity @e[type=marker]
scoreboard players list ents

# Armor stands
tellraw @s "Counting Armor stands"
execute store result score ents entities if entity @e[type=armor_stand]
scoreboard players list ents