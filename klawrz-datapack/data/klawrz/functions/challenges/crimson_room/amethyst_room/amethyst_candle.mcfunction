# Prevent function from firing again
tag @s add done_candle

# Audible success feedback
function klawrz:sfx/sfx_complete

# Spawn chest
setblock ~2 ~-1 ~1 chest[type=right, facing=east]
setblock ~2 ~-1 ~ chest[type=left, facing=east]{Items: [{Slot: 21b, id: "minecraft:splash_potion", Count:1b, tag: {CrimsonRoomNeedsReset:1b, AmethystPotion: 1b, CustomPotionColor:1965844, display: {Name: '{"text":"Highly Corrosive Splash Potion","color":"red"}', Lore: ['{"text":"So corrosive it could melt right","color":"dark_gray"}', '{"text":"through iron bars. Throwable too!","color":"dark_gray"}']}}}, {Slot:23b, id:"minecraft:end_rod", Count: 1b, tag: {SaffronKey:1b, Key3: 1b, CrimsonRoomNeedsReset:1b, display: {Name:'{"text":"Portal Stabilizer","color":"light_purple"}', Lore:['{"text":"Looks like it could stabilize","color":"dark_gray"}', '{"text":"a portal or something","color":"dark_gray"}']}}}]}
