# Handle maze
function klawrz:challenges/crimson_room/saffron_room/saffron_maze

# Handle rails
function klawrz:challenges/crimson_room/saffron_room/saffron_rails

# Run 'complete' function when yellow candles lit
execute at @e[tag=saffron_candle_marker] as @p[scores={challenge.crimson_room.init=1, challenge.crimson_room.complete=1, challenge.cobalt_room.complete=1, challenge.viridian_room.complete=1, challenge.saffron_room.complete=0}] if block ~ ~ ~ yellow_candle[candles=4,lit=true] run function klawrz:challenges/crimson_room/saffron_room/saffron_room_complete
