# Prevent memory game from running again
tag @s add done_memory

# Audible success feedback
function klawrz:sfx/sfx_complete

# Open passage to final puzzle
execute at @e[tag=amethyst_cryptex_marker] run fill ~-6 ~ ~3 ~-6 ~-1 ~3 air
tellraw @p[scores={challenge.crimson_room.init=1}] "A passage opens somewhere."

# Spawn chest
setblock ~ ~-4 ~ chest[facing=east]{Items: [{Slot: 13b, id: "minecraft:purple_candle", tag: {CrimsonRoomNeedsReset: 1b, display: {Name: '{"text":"Amethyst Wax Candle", "color":"light_purple"}'}, HideFlags: 16, CanPlaceOn: ["minecraft:purple_glazed_terracotta"]}, Count: 1b}]}