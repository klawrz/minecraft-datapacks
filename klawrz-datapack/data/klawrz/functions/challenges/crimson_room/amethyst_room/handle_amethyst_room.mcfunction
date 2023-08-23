# Markers (and tags they receive)
# - Amethyst Allay (has_duplicated) (this is the actual Allay entity flying around)
# - Amethyst Allay Marker (doesn't receive tags)
# - Amethyst Flowerpot Marker (done_flowerpot)
# - Amethyst Chorus Marker (done_chorus)
# - Amethyst Cryptex Marker (done_cryptex)
# - Amethyst Memory Marker (done_memory)
# - Amethyst Candle Marker (done_candle)
# - Amethyst Rod Marker (done_rod)

# Prevent Allay leaving room
execute at @e[tag=saffron_door_marker] as @e[tag=amethyst_allay, dx=10, dy=10, dz=0] run tag @s add out
execute at @e[tag=saffron_door_marker] as @e[tag=out] run tp @s ~3 ~5 ~-5
execute as @e[tag=out] run tag @s remove out

# Detect allay duplication
execute at @e[tag=amethyst_allay_marker] store result score #allays entities if entity @e[type=allay, distance=..50]

# If there are 2 allays, run the function unless the allays have a specific tag
execute if score #allays entities matches 2 as @e[tag=amethyst_allay] unless entity @s[tag=has_duplicated] at @e[tag=amethyst_allay_marker] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_allay

# Detect both purple flowers
execute as @e[tag=amethyst_flowerpot_marker] as @s[tag=!done_flowerpot] at @s if block ~ ~ ~ minecraft:potted_allium if block ~3 ~ ~ minecraft:potted_allium run function klawrz:challenges/crimson_room/amethyst_room/amethyst_flowerpot

# Detect all 4 chorus flowers
execute as @e[tag=amethyst_chorus_marker] as @s[tag=!done_chorus] at @s if block ~ ~ ~ chorus_plant if block ~3 ~ ~ chorus_plant if block ~ ~ ~3 chorus_plant if block ~3 ~ ~3 chorus_plant run function klawrz:challenges/crimson_room/amethyst_room/amethyst_chorus

# Handle cryptex
execute as @e[tag=amethyst_cryptex_marker] as @s[tag=!done_cryptex] at @s run function klawrz:challenges/crimson_room/amethyst_room/amethyst_cryptex/handle_amethyst_cryptex

# Handle memory game
execute as @e[tag=amethyst_memory_marker] as @s[tag=!done_memory] at @e[tag=amethyst_skeleton] as @p[distance=..0.5] at @s as @e[tag=amethyst_skeleton, distance=..0.5] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_memory/handle_amethyst_memory

# Handle Shortcut
execute as @e[tag=amethyst_shortcut_marker] as @s[tag=!done_shortcut] at @s if block ~ ~ ~ birch_door[open=false] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_shortcut

# Handle Candle
execute as @e[tag=amethyst_candle_marker] as @s[tag=!done_candle] at @s if block ~ ~ ~ purple_candle[candles=4, lit=true] if block ~1 ~ ~ purple_candle[candles=4, lit=true] if block ~ ~ ~1 purple_candle[candles=4, lit=true] if block ~1 ~ ~1 purple_candle[candles=4, lit=true] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_candle

# Handle Potion
execute as @e[tag=amethyst_rod_marker] as @s[tag=!done_rod] at @s run function klawrz:challenges/crimson_room/amethyst_room/amethyst_potion

# Handle portal
execute as @e[tag=saffron_frame_marker] as @s[tag=!tagged_portal] at @s if entity @e[tag=saffron_frame_01, nbt={ItemRotation: 1b, Item: {tag: {SaffronKey:1b}}}, dx=0, dz=0] if entity @e[tag=saffron_frame_02, nbt={ItemRotation: 7b, Item: {tag: {SaffronKey:1b}}}, dx=1, dz=0] if entity @e[tag=saffron_frame_03, nbt={ItemRotation: 5b, Item: {tag: {SaffronKey:1b}}}, dx=0, dz=1] if entity @e[tag=saffron_frame_04, nbt={ItemRotation: 1b, Item: {tag: {SaffronKey:1b}}}, dx=1, dz=1] run tag @s add tagged_portal
execute as @e[tag=tagged_portal] at @s run function klawrz:challenges/exit_portal