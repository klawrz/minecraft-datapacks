# Cobalt Room reward
# ghast tear, diamond ore, chain mail boots, tipped arrows, saddle, goat horn, music disc: wait, glazed terracotta

# Track that player has completed room
scoreboard players set @p[scores={challenge.crimson_room.init=1, challenge.crimson_room.complete=1, challenge.cobalt_room.complete=0}] challenge.cobalt_room.complete 1

# Play sounds to give feedback that something happened
function klawrz:sfx/sfx_complete

# Spawn reward chest
execute as @e[tag=cobalt_candle_marker] at @s run setblock ~-5 ~-1 ~1 chest[facing=south]{Items:[{Slot:13b,id:"minecraft:tripwire_hook",count:1,components:{"minecraft:custom_name":{"text":"Cobalt Key","color":"blue"},"minecraft:lore":[{"text":"Can be used to escape","color":"dark_gray"},{"text":"the Cobalt Room","color":"dark_gray"}],"minecraft:custom_data":{CobaltKey:1b,CobaltRoomNeedsReset:1b}}},{Slot:14b,id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{"text":"Cobalt Room Treasury Ticket","color":"blue","italic":false},"minecraft:lore":[{"text":"Redeem at the Treasury.","color":"gray","italic":false}],"minecraft:custom_data":{CobaltRoomTicket:1b,TreasuryTicket:1b}}}]} replace
