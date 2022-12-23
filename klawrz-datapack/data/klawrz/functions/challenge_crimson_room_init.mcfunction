# Player is active in Crimson Room challenge
scoreboard players set @s challenge.crimson_room.init 1

# Destroy all entities before placing them again
kill @e[tag=crimson_room__needs_reset]

# Initiate 'complete' scores
execute unless entity @s[scores={challenge.crimson_room.complete=1}] run scoreboard players set @s challenge.crimson_room.complete 0
execute unless entity @s[scores={challenge.cobalt_room.complete=1}] run scoreboard players set @s challenge.cobalt_room.complete 0
execute unless entity @s[scores={challenge.viridian_room.complete=1}] run scoreboard players set @s challenge.viridian_room.complete 0
execute unless entity @s[scores={challenge.saffron_room.complete=1}] run scoreboard players set @s challenge.saffron_room.complete 0
execute unless entity @s[scores={challenge.violet_room.complete=1}] run scoreboard players set @s challenge.violet_room.complete 0

# Place the correct room depending on player progress
execute at @e[tag=origin__crimson_room] if entity @s[scores={challenge.crimson_room.complete=0}] run place template minecraft:crimson_room ~1 ~1 ~1
execute at @e[tag=origin__crimson_room] if entity @s[scores={challenge.crimson_room.complete=1, challenge.cobalt_room.complete=0}] run place template minecraft:cobalt_room ~1 ~1 ~1
execute at @e[tag=origin__crimson_room] if entity @s[scores={challenge.crimson_room.complete=1, challenge.cobalt_room.complete=1, challenge.viridian_room.complete=0}] run place template minecraft:viridian_room ~1 ~1 ~1
execute at @e[tag=origin__crimson_room] if entity @s[scores={challenge.crimson_room.complete=1, challenge.cobalt_room.complete=1, challenge.viridian_room.complete=1, challenge.saffron_room.complete=0}] run place template minecraft:saffron_room ~1 ~1 ~1
execute at @e[tag=origin__crimson_room] if entity @s[scores={challenge.crimson_room.complete=1, challenge.cobalt_room.complete=1, challenge.viridian_room.complete=1, challenge.saffron_room.complete=1, challenge.violet_room.complete=0}] run place template minecraft:violet_room ~1 ~1 ~1

# Observers facing solid blocks must be placed after the room is placed or they will activate
#
# Use Cobalt candle marker for ease since it is next to the observer
execute at @e[tag=cobalt_candle_marker] run setblock ~ ~-1 ~-1 observer[facing=south, powered=true]

# Destroy any items that drop as a result of resetting the challenge
schedule function klawrz:challenge_crimson_room_item_reset 2s

# Give exit trial book
function klawrz:challenge_exit_book

# Warp player to challenge
function klawrz:warp_crimson_room