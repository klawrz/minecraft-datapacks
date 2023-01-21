# Kill floor items
execute at @e[tag=crimson_room__item_reset] as @e[type=item, distance=..50] run kill @s

# Kill any keys being brought into the trial
clear @p[scores={challenge.crimson_room.init=1}] #klawrz:crimson_reset{CrimsonRoomNeedsReset: 1b}