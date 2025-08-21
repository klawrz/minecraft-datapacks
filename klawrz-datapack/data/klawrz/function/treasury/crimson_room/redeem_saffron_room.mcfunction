execute unless entity @s[scores={challenge.saffron_room.complete=1}] run tellraw @s [{"text":"Complete the ","color":"gray"},{"text":"Saffron Room","color":"yellow"},{"text":" first.","color":"gray"}]
execute unless entity @s[scores={challenge.saffron_room.complete=1}] run return 0
execute if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_saffron_room=true}] run tellraw @s [{"text":"You already redeemed your ","color":"gray"},{"text":"Saffron Room","color":"yellow"},{"text":" reward.","color":"gray"}]
execute if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_saffron_room=true}] run return 0
tag @s add treasury_claimed_now
clear @s minecraft:paper[minecraft:custom_data={TreasuryTicket:1b,SaffronRoomTicket:1b}] 1
loot give @s loot klawrz:treasury/saffron_room_reward
function klawrz:sfx/sfx_celebration
tellraw @s {"text":"Saffron Room rewards redeemed!","color":"yellow"}
tellraw @a [{"selector":"@s","color":"yellow"},{"text":" redeemed a ticket at the Treasury.","color":"white"}]
tag @s add treasury_cd
scoreboard players set @s treasury_cd 8
advancement grant @s only klawrz:treasury/crimson_room/redeemed_saffron_room
