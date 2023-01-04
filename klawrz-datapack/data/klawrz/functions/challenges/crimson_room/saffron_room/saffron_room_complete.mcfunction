# Saffron Room reward
# ender pearls, chain mail shirt, honey, enchanted golden apple, potions, enchanted book, reinforced deepslate, music disc: 13, glazed terracotta

# Track that player has completed room
scoreboard players set @p[scores={challenge.crimson_room.init=1, challenge.crimson_room.complete=1, challenge.cobalt_room.complete=1, challenge.viridian_room.complete=1, challenge.saffron_room.complete=0}] challenge.saffron_room.complete 1

# Play sounds to give feedback that something happened
function klawrz:sfx/sfx_complete

# Spawn reward chest
execute at @e[tag=saffron_candle_marker] run setblock ~ ~ ~ chest[facing=north]{Items: [{Slot:13b, id:"minecraft:end_rod", Count: 1b, tag: {Tag: ["saffron_key"], display: {Name:'{"text":"Portal Stabilizer","color":"light_purple"}', Lore:['{"text":"Now, what could this be for?", "color":"dark_gray"}']}}}, {Slot:18b, id:"minecraft:ender_pearl", Count: 16b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Saffron Room trial", "color":"dark_gray"}']}}}, {Slot:19b, id:"minecraft:enchanted_golden_apple", Count: 8b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Saffron Room trial", "color":"dark_gray"}']}}}, {Slot:20b, id:"minecraft:honey_bottle", Count: 16b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Saffron Room trial", "color":"dark_gray"}']}}}, {Slot:21b, id:"minecraft:chainmail_chestplate", Count: 1b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Saffron Room trial", "color":"dark_gray"}']}}}, {Slot:22b, id:"minecraft:reinforced_deepslate", Count: 64b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Saffron Room trial", "color":"dark_gray"}']}}}, {Slot:23b, id:"minecraft:music_disc_13", Count: 1b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Saffron Room trial", "color":"dark_gray"}']}}}, {Slot:24b, id:"minecraft:potion", Count: 1b, tag: {Potion: "minecraft:strong_leaping", display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Saffron Room trial", "color":"dark_gray"}']}}}, {Slot:25b, id:"minecraft:enchanted_book", Count: 1b, tag: {StoredEnchantments: [{id:"minecraft:mending", lvl: 1s}, {id:"minecraft:unbreaking", lvl: 5s}], display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Saffron Room trial", "color":"dark_gray"}']}}}, {Slot:26b, id:"minecraft:yellow_glazed_terracotta", Count: 64b, tag: {display: {Lore:['{"text":"A reward for completing", "color":"dark_gray"}', '{"text":"the Saffron Room trial", "color":"dark_gray"}']}}}]} replace

# Open the door to the Amethyst Room
execute at @e[tag=saffron_door_marker] run fill ~ ~ ~ ~3 ~3 ~1 air

# Tell the player that a door opened somewhere
tellraw @p[scores={challenge.crimson_room.init=1}] "A door opens somewhere."

# Saffron to-do