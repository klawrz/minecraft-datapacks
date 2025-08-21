# Initiate memory IDs for matching 
execute as @e[tag=sethead_iron] run scoreboard players set @s challenge.amethyst_memory 1
execute as @e[tag=sethead_gold] run scoreboard players set @s challenge.amethyst_memory 2
execute as @e[tag=sethead_diamond] run scoreboard players set @s challenge.amethyst_memory 3
execute as @e[tag=sethead_emerald] run scoreboard players set @s challenge.amethyst_memory 4
execute as @e[tag=sethead_copper] run scoreboard players set @s challenge.amethyst_memory 5
execute as @e[tag=sethead_netherite] run scoreboard players set @s challenge.amethyst_memory 6

# Start the game with fresh scoreboard/storage data
tag @e[tag=amethyst_skeleton] remove first
tag @e[tag=amethyst_skeleton] remove locked
tag @e[tag=amethyst_skeleton] remove flipped
scoreboard players set #mem challenge.amethyst_memory 0
data remove storage minecraft:amethyst_memory waiting

execute as @e[tag=amethyst_skeleton] run data merge entity @s {equipment:{head:{id:"minecraft:budding_amethyst",count:1},mainhand:{id:"minecraft:budding_amethyst",count:1},offhand:{id:"minecraft:budding_amethyst",count:1}}}