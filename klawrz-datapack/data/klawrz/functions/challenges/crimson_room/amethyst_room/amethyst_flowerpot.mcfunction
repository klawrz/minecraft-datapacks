# Tag flowerpot marker to prevent function firing again
tag @s add done

# Spawn chest 
setblock ~1 ~1 ~2 chest[type=right, facing=south]{Items: [{Slot: 22b, id: "minecraft:chorus_flower", Count:1b, tag: {CrimsonRoomNeedsReset:1b, HideFlags:16, CanPlaceOn: ["minecraft:end_stone"]}}]}
setblock ~2 ~1 ~2 chest[type=left, facing=south]

# Audible feedback
function klawrz:sfx/sfx_complete