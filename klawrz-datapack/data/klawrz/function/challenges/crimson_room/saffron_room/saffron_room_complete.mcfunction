# Saffron Room reward
# ender pearls, chain mail shirt, honey, enchanted golden apple, potions, enchanted book, reinforced deepslate, music disc: 13, glazed terracotta

# Amethyst mining pick
# /give @s minecraft:golden_pickaxe{CrimsonRoomNeedsReset: 1b, HideFlags: 10, CanDestroy: ["minecraft:amethyst_cluster"], Damage: 33, display: {Name: '{"text":"Busted Gem Pick","color":"light_purple"}', Lore: ['{"text":"Purple crusty residue","color":"dark_gray"}', '{"text":"is caked to the side","color":"dark_gray"}']}}

# Track that player has completed room
scoreboard players set @p[scores={challenge.crimson_room.init=1, challenge.crimson_room.complete=1, challenge.cobalt_room.complete=1, challenge.viridian_room.complete=1, challenge.saffron_room.complete=0}] challenge.saffron_room.complete 1

# Play sounds to give feedback that something happened
function klawrz:sfx/sfx_complete

# Spawn reward chest
execute at @e[tag=saffron_candle_marker] run setblock ~ ~ ~ chest[facing=north]{Items:[{Slot:13b,id:"minecraft:end_rod",count:1,components:{"minecraft:custom_data":{SaffronKey:1b,Key2:1b,CrimsonRoomNeedsReset:1b},"minecraft:custom_name":{"text":"Portal Stabilizer","color":"light_purple"},"minecraft:lore":[{"text":"Some kinda extra-dimensional object","color":"dark_gray"}]}},{Slot:14b,id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{"text":"Saffron Room Treasury Ticket","color":"yellow","italic":false},"minecraft:lore":[{"text":"Redeem at the Treasury.","color":"gray","italic":false}],"minecraft:custom_data":{SaffronRoomTicket:1b,TreasuryTicket:1b}}}]} replace

# Open the door to the Amethyst Room
execute at @e[tag=saffron_door_marker] run fill ~ ~ ~ ~3 ~3 ~1 air

# Tell the player that a door opened somewhere
tellraw @p[scores={challenge.crimson_room.init=1}] "A passage opens somewhere."


# Candle template
# yellow_candle{HideFlags: 16, CanPlaceOn: ["minecraft:yellow_glazed_terracotta"], display: {Name: '{"text":"Saffron Wax Candle","color":"green"}'}, CrimsonRoomNeedsReset: 1b}


# Saffron to-do
# Only place maze/rails if marker isn't tagged with that particular config