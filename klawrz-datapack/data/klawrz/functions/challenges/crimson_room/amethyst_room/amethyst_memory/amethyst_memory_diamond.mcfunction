# Handle diamond head
#

# Prevent function from firing again / remember that card is flipped
tag @s add flipped

# Change head to diamond
data merge entity @s {ArmorItems: [{}, {}, {}, {id:"minecraft:diamond_block", Count: 1b}], HandItems: [{id:"minecraft:diamond_block", Count: 1b}, {id:"minecraft:diamond_block", Count: 1b}]}

# # If this is the 1st flip
#
# Store the head 
execute if score #flip challenge.amethyst_memory.flip matches 0 run function klawrz:challenges/crimson_room/amethyst_room/amethyst_memory/amethyst_memory_store
#
# # If this is the 2nd flip
# 
# Compare this head with stored head
execute if score #flip challenge.amethyst_memory.flip matches 1 run function klawrz:challenges/crimson_room/amethyst_room/amethyst_memory/amethyst_memory_compare

# Increment score so that we compare on next flip
scoreboard players add #flip challenge.amethyst_memory.flip 1

# Prepare for 1st flip again
execute if score #flip challenge.amethyst_memory.flip matches 2 run scoreboard players set #flip challenge.amethyst_memory.flip 0