# Cobalt Room reward
# ghast tear, diamond ore, chain mail boots, tipped arrows, saddle, goat horn, music disc: wait, glazed terracotta

# Track that player has completed room
scoreboard players set @p[scores={challenge.crimson_room.init=1, challenge.crimson_room.complete=1, challenge.cobalt_room.complete=0}] challenge.cobalt_room.complete 1

# Play sounds to give feedback that something happened
function klawrz:sfx_complete

# Spawn reward chest
execute as @e[tag=cobalt_candle_marker] at @s run setblock ~-5 ~-1 ~1 chest[facing=south]{Items: [{Slot:13b, id:"minecraft:tripwire_hook", Count: 1b, tag: {Tag: ["cobalt_key"], display: {Name:'{"text":"Cobalt Key","color":"blue"}', Lore:['{"text":"Can be used to escape", "color":"dark_gray"}','{"text":"the Cobalt Room", "color":"dark_gray"}']}}}, {Slot:18b, id:"minecraft:ghast_tear", Count: 8b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Cobalt Room trial", "color":"dark_gray"}']}}}, {Slot:19b, id:"minecraft:diamond_ore", Count: 16b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Cobalt Room trial", "color":"dark_gray"}']}}}, {Slot:20b, id:"minecraft:saddle", Count: 1b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Cobalt Room trial", "color":"dark_gray"}']}}}, {Slot:21b, id:"minecraft:chainmail_boots", Count: 1b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Cobalt Room trial", "color":"dark_gray"}']}}}, {Slot:22b, id:"minecraft:tipped_arrow", Count: 32b, tag: {Potion: "minecraft:long_night_vision", display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Cobalt Room trial", "color":"dark_gray"}']}}}, {Slot:23b, id:"minecraft:music_disc_wait", Count: 1b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Cobalt Room trial", "color":"dark_gray"}']}}}, {Slot:24b, id:"minecraft:goat_horn", Count: 1b, tag: {instrument: "minecraft:dream_goat_horn", display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Cobalt Room trial", "color":"dark_gray"}']}}}, {Slot:25b, id:"minecraft:blue_glazed_terracotta", Count: 64b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Cobalt Room trial", "color":"dark_gray"}']}}}]} replace


# Cobalt candle chest
# setblock ~ ~2 ~ chest[facing=north]{Items: [{Slot:13b, id:"minecraft:blue_candle", Count: 1b, tag: {CanPlaceOn:["minecraft:tube_coral_block", "minecraft:dead_tube_coral_block"], HideFlags: 16, display: {Name: '{"text":"Cobalt Wax Candle","color":"blue"}'}}}]} replace