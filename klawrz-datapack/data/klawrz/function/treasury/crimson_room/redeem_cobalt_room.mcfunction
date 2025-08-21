execute unless entity @s[scores={challenge.cobalt_room.complete=1}] run tellraw @s [{"text":"Complete the ","color":"gray"},{"text":"Cobalt Room","color":"blue"},{"text":" first.","color":"gray"}]
execute unless entity @s[scores={challenge.cobalt_room.complete=1}] run return 0
execute if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_cobalt_room=true}] run tellraw @s [{"text":"You already redeemed your ","color":"gray"},{"text":"Cobalt Room","color":"blue"},{"text":" reward.","color":"gray"}]
execute if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_cobalt_room=true}] run return 0
tag @s add treasury_claimed_now
clear @s minecraft:paper[minecraft:custom_data={TreasuryTicket:1b,CobaltRoomTicket:1b}] 1
loot give @s loot klawrz:treasury/cobalt_room_reward
function klawrz:sfx/sfx_celebration
tellraw @s {"text":"Cobalt Room rewards redeemed!","color":"blue"}
tellraw @a [{"selector":"@s","color":"yellow"},{"text":" redeemed a ticket at the Treasury.","color":"white"}]
tag @s add treasury_cd
scoreboard players set @s treasury_cd 8
advancement grant @s only klawrz:treasury/crimson_room/redeemed_cobalt_room
