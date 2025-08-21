# Tag flowerpot marker to prevent function firing again
tag @s add done_flowerpot

# Spawn chest 
setblock ~1 ~1 ~2 chest[type=right, facing=south]{Items: [{Slot: 22b, id: "minecraft:chorus_flower", count:1, components: {"minecraft:custom_data": {CrimsonRoomNeedsReset:1b}, can_place_on: {blocks: "minecraft:end_stone"}, tooltip_display: {hidden_components: ["can_place_on"]}}}]}
setblock ~2 ~1 ~2 chest[type=left, facing=south]

# Audible feedback
function klawrz:sfx/sfx_complete