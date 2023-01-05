# Run 'complete' function when red candles lit
execute at @e[tag=crimson_candle_marker] as @p[scores={challenge.crimson_room.init=1, challenge.crimson_room.complete=0}] if block ~ ~ ~ red_candle[candles=3,lit=true] run function klawrz:challenges/crimson_room/crimson_room/crimson_room_complete

# Kill crimson door stands
execute as @e[tag=crimson_door] at @s if entity @p[distance=..1.5,nbt={SelectedItem:{tag:{CrimsonKey:1b}}}] run kill @s