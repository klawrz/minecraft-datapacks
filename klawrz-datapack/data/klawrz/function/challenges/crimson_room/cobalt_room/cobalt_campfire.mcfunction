# Prevent function from firing again
tag @s add done_campfire

# Prevent additional salmon spawning
tag @e[tag=cobalt_salmon_marker] add done_salmon

# Replace barrier at top of bubble elevator
execute at @e[tag=cobalt_salmon_marker] run setblock ~ ~7 ~-3 blue_stained_glass

# Audible success feedback
function klawrz:sfx/sfx_complete

# Spawn chest
execute at @e[tag=cobalt_campfire_marker] run setblock ~2 ~ ~1 chest[facing=north]{Items: [{Slot:13b, id:"minecraft:blue_candle", count: 1, components: { "minecraft:custom_data": {CrimsonRoomNeedsReset: 1b}, "minecraft:can_place_on":{blocks: ["minecraft:tube_coral_block", "minecraft:dead_tube_coral_block"]}, tooltip_display: {hidden_components: ["can_place_on"]}, "minecraft:custom_name": {"text":"Cobalt Wax Candle","color":"blue"}}}]} replace