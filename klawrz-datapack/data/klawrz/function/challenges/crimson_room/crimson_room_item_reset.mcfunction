# Kill floor items
execute at @e[tag=crimson_room__item_reset] as @e[type=item, distance=..15] run kill @s

# Kill any keys being brought into the trial
clear @p[scores={challenge.crimson_room.init=1}] #klawrz:crimson_reset

# Kill any written books that need reset
clear @p[scores={challenge.crimson_room.init=1}] written_book[custom_data={CrimsonRoomNeedsReset:1b}]