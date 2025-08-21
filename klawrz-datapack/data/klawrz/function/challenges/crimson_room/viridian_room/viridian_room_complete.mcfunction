# Viridian Room reward
# turtle shell, emerald ore, slime, chain mail leggings, potion, enchanted book, TNT, music disc: far, glazed terracotta

# Track that player has completed room
scoreboard players set @p[scores={challenge.crimson_room.init=1, challenge.crimson_room.complete=1, challenge.cobalt_room.complete=1, challenge.viridian_room.complete=0}] challenge.viridian_room.complete 1

# Play sounds to give feedback that something happened
function klawrz:sfx/sfx_complete

# Spawn reward chest
execute as @e[tag=viridian_candle_marker] at @s run setblock ~ ~ ~ chest[facing=north]{Items:[{Slot:13b,id:"minecraft:end_rod",count:1,components:{"minecraft:custom_data":{SaffronKey:1b,Key1:1b,CrimsonRoomNeedsReset:1b},"minecraft:custom_name":{"text":"Portal Stabilizer","color":"light_purple"},"minecraft:lore":[{"text":"Now, what could this be for?","color":"dark_gray"}]}},{Slot:14b,id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{"text":"Viridian Room Treasury Ticket","color":"dark_green","italic":false},"minecraft:lore":[{"text":"Redeem at the Treasury.","color":"gray","italic":false}],"minecraft:custom_data":{ViridianRoomTicket:1b,TreasuryTicket:1b}}}]} replace

# Open the door to the Saffron Room
execute at @e[tag=viridian_door_marker] run fill ~ ~ ~ ~ ~1 ~1 air

# Tell the player that a door opened somewhere
tellraw @p[scores={challenge.crimson_room.init=1}] "A passage opens somewhere."

# Prevent the sculk sensor from making sound for rest of puzzle
execute at @e[tag=viridian_sculk_marker] run setblock ~ ~-1 ~ air




# Bow
# give Klawrz bow{Damage: 330, CrimsonRoomNeedsReset: 1b, display: {Name: '{"text":"Shoddy Bowman\'s Bow"}', Lore: ['{"text":"Too stringy, not bowie enough","color":"dark_gray"}']}, Count: 1b}

# Fishing rod / Grappling hook
# give Klawrz fishing_rod{display: {Name: '{"text":"Broken Grappling Hook","color":"gold"}', Lore: ['{"text":"Too busted to transport","color":"dark_gray"}', '{"text":"you anywhere.","color":"dark_gray"}', '{"text":""}', '{"text":"Maybe you can repair","color":"dark_gray"}', '{"text":"this somehow...","color":"dark_gray"}']}, Tags: ["viridian_rod", "broken_grappling_hook"], Count: 1b}

# Candle template
# green_candle{HideFlags: 16, CanPlaceOn: ["minecraft:stripped_warped_stem"], display: {Name: '{"text":"Viridian Wax Candle","color":"green"}'}, CrimsonRoomNeedsReset: 1b}






# Viridian to-do
# dont place water in basement