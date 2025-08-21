# Prevent function from firing again
tag @s add done_candle

# Audible success feedback
function klawrz:sfx/sfx_complete

# Spawn chest
setblock ~2 ~-1 ~1 chest[type=right, facing=east]
setblock ~2 ~-1 ~ chest[type=left, facing=east]{Items: [{Slot: 22b, id: "minecraft:splash_potion", count:1, components: {"minecraft:custom_data":{ CrimsonRoomNeedsReset:1b, AmethystPotion: 1b},  "minecraft:potion_contents": {potion:"minecraft:water", custom_color:1965844}, "minecraft:custom_name": {"text":"Highly Corrosive Splash Potion","color":"red"}, "minecraft:lore": [{"text":"So corrosive it could melt right","color":"dark_gray"}, {"text":"through iron bars. Throwable too!","color":"dark_gray"}], tooltip_display: {hidden_components: ["minecraft:potion_contents"]}}}]}