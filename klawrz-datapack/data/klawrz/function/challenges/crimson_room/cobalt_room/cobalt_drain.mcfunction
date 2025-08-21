# Remove water from main rectangular area / excluding the aquarium
execute at @e[tag=cobalt_campfire_marker] run fill ~-1 ~ ~1 ~3 ~4 ~-6 air replace minecraft:water

# Reset the campfire if it got waterlogged
execute at @e[tag=cobalt_campfire_marker] if block ~ ~ ~ minecraft:soul_campfire[waterlogged=true] run setblock ~ ~ ~ minecraft:soul_campfire[lit=false, waterlogged=false]

# Play a drain sound
function klawrz:sfx/sfx_drain