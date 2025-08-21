# Prevent function from firing again
tag @s add done_bucket

# Audible feedback
function klawrz:sfx/sfx_complete

# Spawn bucket chest
execute at @e[tag=cobalt_candle_marker] run setblock ~-7 ~-1 ~3 chest[facing=east]{Items: [{Slot:13b, id:"minecraft:bucket", count: 1, components: {"minecraft:custom_data": {CrimsonRoomNeedsReset: 1b}, can_place_on: {blocks: ["minecraft:water", "minecraft:chest", "minecraft:blue_candle"]}, tooltip_display: {hidden_components: ["can_place_on"]}}}]} replace