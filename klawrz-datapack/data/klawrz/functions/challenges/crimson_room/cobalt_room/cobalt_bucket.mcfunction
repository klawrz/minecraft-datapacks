# Prevent function from firing again
tag @s add done_bucket

# Audible feedback
function klawrz:sfx/sfx_complete

# Spawn bucket chest
execute at @e[tag=cobalt_candle_marker] run setblock ~-7 ~-1 ~3 chest[facing=east]{Items: [{Slot:13b, id:"minecraft:bucket", Count: 1b, tag: {CrimsonRoomNeedsReset: 1b, HideFlags: 16, CanPlaceOn: ["minecraft:water", "minecraft:chest[waterlogged=true]", "minecraft:blue_candle[waterlogged=true]"]}}]} replace