execute unless entity @s[scores={challenge.amethyst_room.complete=1}] run tellraw @s [{"text":"Complete the ","color":"gray"},{"text":"Amethyst Room","color":"light_purple"},{"text":" first.","color":"gray"}]
execute unless entity @s[scores={challenge.amethyst_room.complete=1}] run return 0
execute if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_amethyst_room=true}] run tellraw @s [{"text":"You already redeemed your ","color":"gray"},{"text":"Amethyst Room","color":"light_purple"},{"text":" reward.","color":"gray"}]
execute if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_amethyst_room=true}] run return 0
tag @s add treasury_claimed_now
clear @s minecraft:paper[minecraft:custom_data={TreasuryTicket:1b,AmethystRoomTicket:1b}] 1
loot give @s loot klawrz:treasury/amethyst_room_reward
function klawrz:sfx/sfx_celebration
tellraw @s {"text":"Amethyst Room rewards redeemed!","color":"light_purple"}
tellraw @a [{"selector":"@s","color":"yellow"},{"text":" redeemed a ticket at the Treasury.","color":"white"}]
tag @s add treasury_cd
scoreboard players set @s treasury_cd 8
advancement grant @s only klawrz:treasury/crimson_room/redeemed_amethyst_room
