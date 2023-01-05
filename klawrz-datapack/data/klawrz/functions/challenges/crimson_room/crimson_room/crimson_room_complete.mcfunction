# Crimson Room reward
# blaze rod, netherwart, name tag, chain mail helmet, obsidian, nether quartz ore, music disc: chirp, glazed terracotta

# Track that player has completed room
scoreboard players set @p[scores={challenge.crimson_room.init=1, challenge.crimson_room.complete=0}] challenge.crimson_room.complete 1

# Play sounds to give feedback that something happened
function klawrz:sfx/sfx_complete

# Spawn reward chest
execute as @e[tag=crimson_candle_marker] at @s run setblock ~1 ~-1 ~-4 chest[facing=south]{Items: [{Slot:13b, id:"minecraft:tripwire_hook", Count: 1b, tag: {CrimsonKey: 1b, CrimsonRoomNeedsReset: 1b, display: {Name:'{"text":"Crimson Key","color":"red"}', Lore:['{"text":"Can be used to escape", "color":"dark_gray"}','{"text":"the Crimson Room", "color":"dark_gray"}']}}}, {Slot:18b, id:"minecraft:blaze_rod", Count: 8b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Crimson Room trial", "color":"dark_gray"}']}}}, {Slot:19b, id:"minecraft:nether_wart", Count: 16b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Crimson Room trial", "color":"dark_gray"}']}}}, {Slot:20b, id:"minecraft:name_tag", Count: 4b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Crimson Room trial", "color":"dark_gray"}']}}}, {Slot:21b, id:"minecraft:chainmail_helmet", Count: 1b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Crimson Room trial", "color":"dark_gray"}']}}}, {Slot:22b, id:"minecraft:obsidian", Count: 32b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Crimson Room trial", "color":"dark_gray"}']}}}, {Slot:23b, id:"minecraft:music_disc_chirp", Count: 1b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Crimson Room trial", "color":"dark_gray"}']}}}, {Slot:24b, id:"minecraft:nether_quartz_ore", Count: 64b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Crimson Room trial", "color":"dark_gray"}']}}}, {Slot:25b, id:"minecraft:red_glazed_terracotta", Count: 64b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Crimson Room trial", "color":"dark_gray"}']}}}]} replace



# Candle chest
# setblock ~ ~2 ~ chest[facing=west]{Items:[{Slot: 13b, id:"minecraft:red_candle", Count:1b, tag: {CanPlaceOn: ["minecraft:stripped_crimson_hyphae"], HideFlags: 16, display: {Name: '{"text":"Crimson Wax Candle","color":"red"}' }}}]} replace

# Lighter chest
# setblock ~ ~2 ~ chest[facing=east]{Items:[{Slot: 12b, id:"minecraft:flint_and_steel", Count: 1b, tag: {CanPlaceOn: ["minecraft:red_candle"], HideFlags: 16} },{Slot: 13b, id:"minecraft:red_candle", Count: 1b, tag: {CanPlaceOn: ["minecraft:stripped_crimson_hyphae"], HideFlags: 16, display: {Name: '{"text":"Crimson Wax Candle","color":"red"}' }} }]} replace