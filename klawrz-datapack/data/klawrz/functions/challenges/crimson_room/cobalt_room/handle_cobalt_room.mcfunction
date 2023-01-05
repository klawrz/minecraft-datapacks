# Handle salmon spawning
execute at @e[tag=cobalt_salmon_marker] as @p[distance=..10] unless entity @e[type=minecraft:salmon, distance=..8] run summon minecraft:salmon ~ ~ ~ {Attributes:[{Name:"generic.movement_speed", Base: 3.0d}], Health: 0.1f, PersistenceRequired: 1b, Tags:["crimson_room__needs_reset"]}

# Run 'complete' function when blue candles lit
execute at @e[tag=cobalt_candle_marker] as @p[scores={challenge.crimson_room.init=1, challenge.crimson_room.complete=1, challenge.cobalt_room.complete=0}] if block ~ ~ ~ blue_candle[candles=4,lit=true] run function klawrz:challenges/crimson_room/cobalt_room/cobalt_room_complete

# Kill cobalt door stands
execute as @e[tag=cobalt_door] at @s if entity @p[distance=..1.5,nbt={SelectedItem:{tag:{CobaltKey:1b}}}] run kill @s