# Markers (and tags they receive):
# - Crimson Frame Marker
# - Crimson Candle Marker

# Handle item frame
execute at @e[tag=crimson_frame_marker] unless block ~-2 ~-3 ~-4 air if entity @e[tag=crimson_frame, nbt={Item: {id:"minecraft:poppy"},ItemRotation:7b}] run setblock ~-2 ~-3 ~-4 air
execute at @e[tag=crimson_frame_marker] unless block ~-2 ~-3 ~-4 redstone_block unless entity @e[tag=crimson_frame, nbt={Item: {id:"minecraft:poppy"},ItemRotation:7b}] run setblock ~-2 ~-3 ~-4 redstone_block

# Run 'complete' function when red candles lit
execute at @e[tag=crimson_candle_marker] as @p[scores={challenge.crimson_room.init=1, challenge.crimson_room.complete=0}] if block ~ ~ ~ red_candle[candles=3,lit=true] run function klawrz:challenges/crimson_room/crimson_room/crimson_room_complete

# Kill crimson door stands
execute as @e[tag=crimson_door] at @s if entity @p[distance=..1.5,nbt={SelectedItem:{components:{"minecraft:custom_data":{CrimsonKey:1b}}}}] run kill @s

# Door stand template
# 3 in a row, in the center of a block. The first one in the row will be at .3, the second one at .5, the third one at .7
# nbt: {Invulnerable: 1b, Invisible: 1b, NoBasePlate: 1b, Rotation: [0.0f, 0.0f], Tags: ["crimson_door", "crimson_room__needs_reset"]}

# Sponge template
# sponge{CrimsonRoomNeedsReset: 1b, HideFlags: 16, CanPlaceOn: ["minecraft:blue_candle[waterlogged=true]"]}

# Redstone Dust template
# redstone{CrimsonRoomNeedsReset: 1b, HideFlags: 16, CanPlaceOn: ["minecraft:sculk"]}