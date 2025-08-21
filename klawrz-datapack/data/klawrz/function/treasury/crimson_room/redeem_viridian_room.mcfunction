execute unless entity @s[scores={challenge.viridian_room.complete=1}] run tellraw @s [{"text":"Complete the ","color":"gray"},{"text":"Viridian Room","color":"dark_green"},{"text":" first.","color":"gray"}]
execute unless entity @s[scores={challenge.viridian_room.complete=1}] run return 0
execute if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_viridian_room=true}] run tellraw @s [{"text":"You already redeemed your ","color":"gray"},{"text":"Viridian Room","color":"dark_green"},{"text":" reward.","color":"gray"}]
execute if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_viridian_room=true}] run return 0
tag @s add treasury_claimed_now
clear @s minecraft:paper[minecraft:custom_data={TreasuryTicket:1b,ViridianRoomTicket:1b}] 1
loot give @s loot klawrz:treasury/viridian_room_reward
function klawrz:sfx/sfx_celebration
tellraw @s {"text":"Viridian Room rewards redeemed!","color":"dark_green"}
tellraw @a [{"selector":"@s","color":"yellow"},{"text":" redeemed a ticket at the Treasury.","color":"white"}]
tag @s add treasury_cd
scoreboard players set @s treasury_cd 8
advancement grant @s only klawrz:treasury/crimson_room/redeemed_viridian_room
