# Prevent function from firing again
tag @s add done_aquarium

# Open bubble elevator
execute at @e[tag=cobalt_salmon_marker] run setblock ~ ~-3 ~-2 redstone_block

# Remove barrier at top of bubble elevator
execute at @e[tag=cobalt_candle_marker] run setblock ~ ~6 ~1 air
