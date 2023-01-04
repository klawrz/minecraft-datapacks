# Viridian Room reward
# turtle shell, emerald ore, slime, chain mail leggings, potion, enchanted book, TNT, music disc: far, glazed terracotta

# Track that player has completed room
scoreboard players set @p[scores={challenge.crimson_room.init=1, challenge.crimson_room.complete=1, challenge.cobalt_room.complete=1, challenge.viridian_room.complete=0}] challenge.viridian_room.complete 1

# Play sounds to give feedback that something happened
function klawrz:sfx/sfx_complete

# Spawn reward chest
execute at @e[tag=viridian_candle_marker] run setblock ~ ~ ~ chest[facing=north]{Items: [{Slot:13b, id:"minecraft:end_rod", Count: 1b, tag: {Tag: ["saffron_key"], display: {Name:'{"text":"Portal Stabilizer","color":"light_purple"}', Lore:['{"text":"Now, what could this be for?", "color":"dark_gray"}']}}}, {Slot:18b, id:"minecraft:emerald_ore", Count: 16b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Viridian Room trial", "color":"dark_gray"}']}}}, {Slot:19b, id:"minecraft:turtle_helmet", Count: 1b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Viridian Room trial", "color":"dark_gray"}']}}}, {Slot:20b, id:"minecraft:slime_ball", Count: 48b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Viridian Room trial", "color":"dark_gray"}']}}}, {Slot:21b, id:"minecraft:chainmail_leggings", Count: 1b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Viridian Room trial", "color":"dark_gray"}']}}}, {Slot:22b, id:"minecraft:tnt", Count: 64b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Viridian Room trial", "color":"dark_gray"}']}}}, {Slot:23b, id:"minecraft:music_disc_far", Count: 1b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Viridian Room trial", "color":"dark_gray"}']}}}, {Slot:24b, id:"minecraft:potion", Count: 1b, tag: {Potion: "minecraft:long_regeneration", display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Viridian Room trial", "color":"dark_gray"}', '{"text":""}', '{"text":"You have a feeling this", "color":"dark_gray"}', '{"text":"this might be of use", "color":"dark_gray"}']}}}, {Slot:25b, id:"minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{id:"minecraft:fire_aspect", lvl: 2s}, {id:"minecraft:infinity", lvl: 1s}], display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Viridian Room trial", "color":"dark_gray"}']}}}, {Slot:26b, id:"minecraft:green_glazed_terracotta", Count: 64b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Viridian Room trial", "color":"dark_gray"}']}}}]} replace

# Open the door to the Saffron Room
execute at @e[tag=viridian_door_marker] run fill ~ ~ ~ ~ ~1 ~1 air

# Tell the player that a door opened somewhere
tellraw @p[scores={challenge.crimson_room.init=1}] "A door opens somewhere."




# Bow
# give Klawrz bow{Damage: 360, display: {Name: '{"text":"Shoddy Bowman\'s Bow"}', Lore: ['{"text":"Too stringy, not bowie enough","color":"dark_gray"}']}, Tags: ["viridian_bow"], Count: 1b}

# Fishing rod / Grappling hook
# give Klawrz fishing_rod{display: {Name: '{"text":"Broken Grappling Hook","color":"gold"}', Lore: ['{"text":"Too busted to transport","color":"dark_gray"}', '{"text":"you anywhere.","color":"dark_gray"}', '{"text":""}', '{"text":"Maybe you can repair","color":"dark_gray"}', '{"text":"this somehow...","color":"dark_gray"}']}, Tags: ["viridian_rod", "broken_grappling_hook"], Count: 1b}








# Viridian to-do
# dont place water in basement