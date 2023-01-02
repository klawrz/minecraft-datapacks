# # # # # # # # # # # # # # # # # #
#              Warps              #
# # # # # # # # # # # # # # # # # #

# Warp stand template
# /summon minecraft:armor_stand 656 71 490 {Invisible:1b, Invulnerable:1b, Small:1b, Marker:1b, NoGravity:1b, CustomName: '{"text":"To PVP Hub 2nd Floor"}', Tags: ["to_pvp_hub_floor_2", "warp_stand"], Rotation: [0.0f, 0.0f]}

# Port stand template
# /summon minecraft:armor_stand 840.67 105 230.70 {Invisible:1b, Invulnerable:1b, Small:1b, Marker:1b, NoGravity:1b, CustomName: '{"text":"Crimson Room Port"}', Tags: ["crimson_room__port"], Rotation: [180.0f, 90.0f]}

#
# # # # # # # # #
#    General    #
# # # # # # # # #
#

# Particle effect
execute at @e[tag=warp_stand] run function klawrz:warp_particle

# Play warp sound to surrounding players when someone uses warp
#notworking
#execute at @e[tag=warp_stand, limit=1] as @p[distance=..0.5] run function klawrz:warp_sound

# Warp to Moria
execute at @e[tag=to_moria] as @p[distance=..0.5] run function klawrz:warp_moria

# Warp to PVP Hub
execute at @e[tag=to_pvp_hub] as @p[distance=..0.5] run function klawrz:warp_pvp_hub

# Warp to PVP Hub 2nd floor
execute at @e[tag=to_pvp_hub__floor_2] as @p[distance=..0.5] run function klawrz:warp_pvp_hub_floor_2

# Warp to Trials
execute at @e[tag=to_trials] as @p[distance=..0.5] run function klawrz:warp_trials

# Warp to Arena Towers
execute at @e[tag=to_arena_towers] as @p[distance=..0.5] run function klawrz:warp_arena_towers




#
# # # # # # # # #
#   Moria Hub   #
# # # # # # # # #
#

# warp to PVP Hub
execute at @e[tag=moria_warp_hub__warp] as @p[distance=..0.5] if entity @e[tag=moria_warp_frame, nbt={ItemRotation: 4b}] run function klawrz:warp_pvp_hub

# warp to Doozza Village
execute at @e[tag=moria_warp_hub__warp] as @p[distance=..0.5] if entity @e[tag=moria_warp_frame, nbt={ItemRotation: 5b}] run function klawrz:warp_doozza_village


#
# # # # # # # # #
#   Trial Hub   #
# # # # # # # # #
#

# Initiate the Crimson Room challenge
execute at @e[tag=trial_dial_warp] as @p[distance=..0.5] if entity @e[tag=trial_dial_frame, nbt={ItemRotation: 0b}] unless entity @a[scores={challenge.crimson_room.init=1}] run function klawrz:challenge_crimson_room_init

#
#
#
#
#


# # # # # # # # # # # # # # # # # #
#             Trials              #
# # # # # # # # # # # # # # # # # #

#
# # # # # # # # #
#    General    #
# # # # # # # # #
#

# Prepare to exit trial
scoreboard players enable @a challenge.exit

# Exit trial
execute as @a[scores={challenge.exit=1..}] run function klawrz:challenge_exit




#
# # # # # # # # #
# Crimson  Room #
# # # # # # # # #
#

# Player no longer active in trial on death
execute as @a[scores={health=0}] run scoreboard players reset @a challenge.crimson_room.init

# Run 'complete' function when red candles lit
execute at @e[tag=crimson_candle_marker] as @p[scores={challenge.crimson_room.init=1, challenge.crimson_room.complete=0}] if block ~ ~ ~ red_candle[candles=3,lit=true] run function klawrz:challenge_crimson_room_complete

# Kill crimson door stands
execute as @e[tag=crimson_door] at @s if entity @p[distance=..1.5,nbt={SelectedItem:{tag:{Tag:["crimson_key"]}}}] run kill @s

# Kill dropped item frames
execute at @e[tag=crimson_room__item_reset] as @e[type=item,nbt={Item: {id:"minecraft:item_frame"}},distance=..30] run kill @s
execute at @e[tag=crimson_room__item_reset] as @e[type=item,nbt={Item: {id:"minecraft:glow_item_frame"}},distance=..30] run kill @s

# Handle item frames
execute at @e[tag=crimson_frame_marker] unless entity @e[tag=crimson_frame] run summon minecraft:item_frame ~ ~ ~ {Tags:["crimson_frame", "crimson_room__needs_reset"], Facing: 4b}



#
# # # # # # # # #
#  Cobalt Room  #
# # # # # # # # #
#

# Handle bucket placement
execute as @p[scores={challenge.crimson_room.init=1}] if entity @s[nbt={SelectedItem: {id:"minecraft:bucket"}}] unless entity @s[nbt={SelectedItem: {tag: {Tags: ["cobalt_room_empty_bucket"]}}}] run item replace entity @s weapon.mainhand with minecraft:bucket{Tags: ["cobalt_room_empty_bucket"], CanPlaceOn: ["minecraft:water", "minecraft:chest[waterlogged=true]", "minecraft:blue_candle[waterlogged=true]"], HideFlags: 16}
execute as @p[scores={challenge.crimson_room.init=1}] if entity @s[nbt={SelectedItem: {id:"minecraft:water_bucket"}}] unless entity @s[nbt={SelectedItem: {tag: {Tags: ["cobalt_room_bucket"]}}}] run item replace entity @s weapon.mainhand with minecraft:water_bucket{Tags: ["cobalt_room_bucket"], CanPlaceOn: ["minecraft:warped_stem", "minecraft:blue_concrete", "minecraft:blue_concrete_powder", "minecraft:blue_stained_glass", "minecraft:blue_glazed_terracotta", "minecraft:chest", "minecraft:blue_bed", "minecraft:blue_carpet"], HideFlags: 16}

# Handle salmon spawning
execute at @e[tag=cobalt_salmon_marker] as @p[distance=..10, scores={challenge.crimson_room.init=1, challenge.crimson_room.complete=1, challenge.cobalt_room.complete=0}] unless entity @e[type=minecraft:salmon, distance=..8] run summon minecraft:salmon ~ ~ ~ {Attributes:[{Name:"generic.movement_speed", Base: 3.0d}], Health: 0.1f, PersistenceRequired: 1b, Tags:["crimson_room__needs_reset"]}

# Run 'complete' function when blue candles lit
execute at @e[tag=cobalt_candle_marker] as @p[scores={challenge.crimson_room.init=1, challenge.crimson_room.complete=1, challenge.cobalt_room.complete=0}] if block ~ ~ ~ blue_candle[candles=4,lit=true] run function klawrz:challenge_cobalt_room_complete

# Kill cobalt door stands
execute as @e[tag=cobalt_door] at @s if entity @p[distance=..1.5,nbt={SelectedItem:{tag:{Tag:["cobalt_key"]}}}] run kill @s



#
# # # # # # # # #
# Viridian Room #
# # # # # # # # #
#

# Handle arrow shooting
execute at @p[scores={challenge.crimson_room.init=1}] as @e[distance=..50, type=minecraft:arrow, nbt={inGround: 1b}] run function klawrz:challenge_viridian_bow

# Run 'complete' function when green candles lit
execute at @e[tag=viridian_candle_marker] as @p[scores={challenge.crimson_room.init=1, challenge.crimson_room.complete=1, challenge.cobalt_room.complete=1, challenge.viridian_room.complete=0}] if block ~ ~ ~ green_candle[candles=4,lit=true] if block ~ ~ ~-1 green_candle[candles=4,lit=true] run function klawrz:challenge_viridian_room_complete



#
# # # # # # # # #
# Saffron  Room #
# # # # # # # # #
#

# Handle item frames
execute at @e[tag=saffron_frame_marker] unless entity @e[tag=saffron_frame_01, dx=0, dz=0] run summon minecraft:glow_item_frame ~ ~ ~ {Tags:["saffron_frame_01", "crimson_room__needs_reset"], Facing: 1b}
execute at @e[tag=saffron_frame_marker] unless entity @e[tag=saffron_frame_02, dx=1, dz=0] run summon minecraft:glow_item_frame ~1 ~ ~ {Tags:["saffron_frame_02", "crimson_room__needs_reset"], Facing: 1b}
execute at @e[tag=saffron_frame_marker] unless entity @e[tag=saffron_frame_03, dx=0, dz=1] run summon minecraft:glow_item_frame ~ ~ ~1 {Tags:["saffron_frame_03", "crimson_room__needs_reset"], Facing: 1b}
execute at @e[tag=saffron_frame_marker] unless entity @e[tag=saffron_frame_04, dx=1, dz=1] run summon minecraft:glow_item_frame ~1 ~ ~1 {Tags:["saffron_frame_04", "crimson_room__needs_reset"], Facing: 1b}

# Handle maze
execute as @p[scores={challenge.crimson_room.init=1, challenge.viridian_room.complete=1, challenge.saffron_room.complete=0}] run function klawrz:challenge_saffron_maze

# Handle rails
execute as @p[scores={challenge.crimson_room.init=1, challenge.viridian_room.complete=1, challenge.saffron_room.complete=0}] run function klawrz:challenge_saffron_rails

# Run 'complete' function when green candles lit
execute at @e[tag=saffron_candle_marker] as @p[scores={challenge.crimson_room.init=1, challenge.crimson_room.complete=1, challenge.cobalt_room.complete=1, challenge.viridian_room.complete=1, challenge.saffron_room.complete=0}] if block ~ ~ ~ yellow_candle[candles=4,lit=true] run function klawrz:challenge_saffron_room_complete



#
# # # # # # # # #
# Amethyst Room #
# # # # # # # # #
#