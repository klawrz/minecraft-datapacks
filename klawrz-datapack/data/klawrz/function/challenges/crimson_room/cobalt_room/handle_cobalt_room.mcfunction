# Markers (and tags they receive):
# - Cobalt Candle Marker (done_bucket, done_aquarium)
# - Cobalt Salmon Marker (done_salmon)
# - Cobalt Campfire Marker (done_campfire)

# Handle bucket chest
execute as @e[tag=cobalt_candle_marker] as @s[tag=!done_bucket] at @s if block ~-8 ~-1 ~ blue_candle[candles=4, lit=true, waterlogged=false] run function klawrz:challenges/crimson_room/cobalt_room/cobalt_bucket

# Handle aquarium
execute as @e[tag=cobalt_candle_marker] as @s[tag=!done_aquarium] at @s if block ~ ~-1 ~ dead_tube_coral_block run function klawrz:challenges/crimson_room/cobalt_room/cobalt_aquarium

# Handle salmon spawning
execute as @e[tag=cobalt_salmon_marker] as @s[tag=!done_salmon] at @s unless entity @e[type=minecraft:salmon, distance=..8] run summon minecraft:salmon ~ ~ ~ {attributes:[{id:"minecraft:movement_speed", base: 3.0d}], Health: 0.1f, PersistenceRequired: 1b, Tags:["crimson_room__needs_reset"]}

# Handle campfire
execute as @e[tag=cobalt_campfire_marker] as @s[tag=!done_campfire] at @s if block ~ ~ ~ minecraft:soul_campfire{CookingTimes: [I; 600, 600, 600, 600]} run function klawrz:challenges/crimson_room/cobalt_room/cobalt_campfire

# Run 'complete' function when blue candles lit
execute at @e[tag=cobalt_candle_marker] as @p[scores={challenge.crimson_room.init=1, challenge.crimson_room.complete=1, challenge.cobalt_room.complete=0}] if block ~ ~ ~ blue_candle[candles=4,lit=true] run function klawrz:challenges/crimson_room/cobalt_room/cobalt_room_complete

# Kill cobalt door stands
execute as @e[tag=cobalt_door] at @s if entity @p[distance=..1.5,nbt={SelectedItem:{components: { "minecraft:custom_data":{CobaltKey:1b}}}}] run kill @s