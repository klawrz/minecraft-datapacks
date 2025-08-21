# Prevent memory game from running again
tag @s add done_memory

# Audible success feedback
function klawrz:sfx/sfx_complete

# Open passage to final puzzle
execute at @e[tag=amethyst_cryptex_marker] run fill ~-6 ~ ~3 ~-6 ~-1 ~3 air
tellraw @p[scores={challenge.crimson_room.init=1}] "A passage opens somewhere."

# Spawn chest
setblock ~ ~-4 ~ chest[facing=east]{Items: [{Slot: 13b, id: "minecraft:purple_candle", components: {"minecraft:custom_data": {CrimsonRoomNeedsReset:1b}, "minecraft:custom_name": {"text":"Amethyst Wax Candle", "color":"light_purple"}, "minecraft:can_place_on": {blocks: "minecraft:purple_glazed_terracotta"}, tooltip_display: {hidden_components: ["can_place_on"]}}, count: 1}]}