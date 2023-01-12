# Prevent function from firing again
tag @s add done_campfire

# Audible success feedback
function klawrz:sfx/sfx_complete

# Spawn chest
execute at @e[tag=cobalt_campfire_marker] run setblock ~2 ~ ~1 chest[facing=north]{Items: [{Slot:13b, id:"minecraft:blue_candle", Count: 1b, tag: {CrimsonRoomNeedsReset: 1b, CanPlaceOn:["minecraft:tube_coral_block", "minecraft:dead_tube_coral_block"], HideFlags: 16, display: {Name: '{"text":"Cobalt Wax Candle","color":"blue"}'}}}]} replace