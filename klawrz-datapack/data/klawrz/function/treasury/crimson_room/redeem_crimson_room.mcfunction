# require completion
execute unless entity @s[scores={challenge.crimson_room.complete=1}] run tellraw @s [{"text":"Complete the ","color":"gray"},{"text":"Crimson Room","color":"dark_red"},{"text":" first.","color":"gray"}]
execute unless entity @s[scores={challenge.crimson_room.complete=1}] run return 0

# already redeemed? (defensive)
execute if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_crimson_room=true}] run tellraw @s [{"text":"You already redeemed your ","color":"gray"},{"text":"Crimson Room","color":"dark_red"},{"text":" reward.","color":"gray"}]
execute if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_crimson_room=true}] run return 0

# mark this click as claimed
tag @s add treasury_claimed_now

# consume one ticket if present (optional)
clear @s minecraft:paper[minecraft:custom_data={TreasuryTicket:1b,CrimsonRoomTicket:1b}] 1

# payout
loot give @s loot klawrz:treasury/crimson_room_reward
function klawrz:sfx/sfx_celebration
tellraw @s {"text":"Crimson Room rewards redeemed!","color":"dark_red"}
tellraw @a [{"selector":"@s","color":"yellow"},{"text":" redeemed a ticket at the Treasury.","color":"white"}]

# cooldown (optional)
tag @s add treasury_cd
scoreboard players set @s treasury_cd 8

# lock future redemptions
advancement grant @s only klawrz:treasury/crimson_room/redeemed_crimson_room
