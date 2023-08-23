# Player is active in Crimson Room challenge
scoreboard players set @s challenge.crimson_room.init 1

# Ensure gamemode is set to Adventure
gamemode adventure @s

# Destroy all entities before placing them again
kill @e[tag=crimson_room__needs_reset]

# Initiate 'complete' scores
execute unless entity @s[scores={challenge.crimson_room.complete=1}] run scoreboard players set @s challenge.crimson_room.complete 0
execute unless entity @s[scores={challenge.cobalt_room.complete=1}] run scoreboard players set @s challenge.cobalt_room.complete 0
execute unless entity @s[scores={challenge.viridian_room.complete=1}] run scoreboard players set @s challenge.viridian_room.complete 0
execute unless entity @s[scores={challenge.saffron_room.complete=1}] run scoreboard players set @s challenge.saffron_room.complete 0
execute unless entity @s[scores={challenge.amethyst_room.complete=1}] run scoreboard players set @s challenge.amethyst_room.complete 0

# Place the correct room depending on player progress
execute at @e[tag=origin__crimson_room] if entity @s[scores={challenge.crimson_room.complete=0}] run place template minecraft:crimson_room ~1 ~1 ~1
execute at @e[tag=origin__crimson_room] if entity @s[scores={challenge.crimson_room.complete=1, challenge.cobalt_room.complete=0}] run place template minecraft:cobalt_room ~1 ~1 ~1
execute at @e[tag=origin__crimson_room] if entity @s[scores={challenge.crimson_room.complete=1, challenge.cobalt_room.complete=1, challenge.viridian_room.complete=0}] run place template minecraft:viridian_room ~1 ~1 ~1
execute at @e[tag=origin__crimson_room] if entity @s[scores={challenge.crimson_room.complete=1, challenge.cobalt_room.complete=1, challenge.viridian_room.complete=1, challenge.saffron_room.complete=0}] run place template minecraft:saffron_room ~1 ~1 ~1
execute at @e[tag=origin__crimson_room] if entity @s[scores={challenge.crimson_room.complete=1, challenge.cobalt_room.complete=1, challenge.viridian_room.complete=1, challenge.saffron_room.complete=1, challenge.amethyst_room.complete=0}] run place template minecraft:amethyst_room ~1 ~1 ~1

# Reset mini challenge scores
#
# # Amethyst Allays
scoreboard players set #allays entities 0
#
# # Amethyst Memory
scoreboard players set #mem challenge.amethyst_memory 0
scoreboard players set #flip challenge.amethyst_memory.flip 0
#
# # Amethyst Cryptex
scoreboard players set #amethyst_cryptex_01 challenge.amethyst_cryptex 0
scoreboard players set #amethyst_cryptex_02 challenge.amethyst_cryptex 0
scoreboard players set #amethyst_cryptex_03 challenge.amethyst_cryptex 0
scoreboard players set #amethyst_cryptex_04 challenge.amethyst_cryptex 0

# Destroy any items that drop as a result of resetting the challenge, as well as any key item being brought into the challenge
schedule function klawrz:challenges/crimson_room/crimson_room_item_reset 1s

# Give exit trial book
function klawrz:challenges/challenge_exit_book

# Warp player to challenge
function klawrz:warps/warp_crimson_room