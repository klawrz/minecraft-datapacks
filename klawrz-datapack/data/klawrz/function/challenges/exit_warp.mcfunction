# Destroy Entities
function klawrz:challenges/crimson_room/crimson_room_entity_reset

# Destroy any items that shouldn't leave the challenge
clear @p[scores={challenge.crimson_room.init=1}] #klawrz:crimson_reset
clear @p[scores={challenge.crimson_room.init=1}] written_book[custom_data={CrimsonRoomNeedsReset:1b}]
clear @p[scores={challenge.crimson_room.init=1}] written_book[custom_data={ChallengeExitBook:1b}]

# Player is no longer in the exit portal
tag @s remove exit_portal_in

# Player is no longer active in Crimson Room. Reset all players as a catch-all
scoreboard players reset * challenge.crimson_room.init

# Mark amethyst room completed
function klawrz:challenges/crimson_room/amethyst_room/amethyst_room_complete

# Track puzzle completion
scoreboard players set @s challenge.crimson_room.fully_completed 1

# Warp to PVP Hub
function klawrz:warps/warp_pvp_hub

# Cleanup scores
scoreboard players reset @s portal_cd
scoreboard players reset @s portal_charge
scoreboard players reset @s portal_sound

# Congratulate Player
#
# # set title timing
title @s times 10 60 20

# # show congrats title to the winner
title @s title [{"text":"Congratulations", "color":"white"}]
title @s subtitle [{"text":"You escaped the ","color":"white"},{"text":"Crimson Room","color":"dark_red"},{"text":"!","color":"white"}]

# # announce to everyone in chat
tellraw @a [{"selector":"@s","color":"yellow"},{"text":" has completed the ","color":"white"},{"text":"Crimson Room","color":"dark_red"},{"text":" trial!","color":"white"}]
