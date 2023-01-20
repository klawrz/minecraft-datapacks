# Attempt to overwrite storage with new data + store the success (pass or fail) in a score

# This is the 2nd flip, we are going to check for a pair by attempting to overwrite the storage with new data
execute store success score #bool bool run data modify storage minecraft:amethyst_memory Head set from entity @s ArmorItems[]

# We can't overwrite data with the same data, an error is thrown and the check fails
#
# If the storage data is the same as what we are trying to overwrite it with (i.e a match), this fails returning 0 
# 
# If the existing storage data is different than the new storage data (i.e not a match), this succeeds returning 1
#
# # Match
execute if score #bool bool matches 0 run scoreboard players add #mem challenge.amethyst_memory 2
execute if score #bool bool matches 0 run function klawrz:sfx/sfx_happy
#
# # No match
execute as @e[tag=amethyst_skeleton] if score #bool bool matches 1 run function klawrz:challenges/crimson_room/amethyst_room/amethyst_memory/amethyst_memory_reset