# Markers (and tags they receive):
# - Viridian Forcefield Marker (done_forcefield)
# - Viridian Target Marker
# - Viridian Candle Marker

# Handle forcefield
execute as @e[tag=viridian_forcefield_marker] as @s[tag=!done_forcefield] at @s if block ~ ~ ~ warped_pressure_plate[powered=true] if block ~-1 ~-7 ~1 warped_pressure_plate[powered=true] run function klawrz:challenges/crimson_room/viridian_room/viridian_forcefield

# Run 'complete' function when green candles lit
execute at @e[tag=viridian_candle_marker] as @p[scores={challenge.crimson_room.init=1, challenge.crimson_room.complete=1, challenge.cobalt_room.complete=1, challenge.viridian_room.complete=0}] if block ~ ~ ~ green_candle[candles=4,lit=true] if block ~ ~ ~-1 green_candle[candles=4,lit=true] run function klawrz:challenges/crimson_room/viridian_room/viridian_room_complete
