# # # # # # # # # # # # # # # # # #
#              Warps              #
# # # # # # # # # # # # # # # # # #

# Warp marker template
# summon marker ~ ~ ~ {Tags:["to_pvp_hub_floor_2","warp_marker"],CustomName:"Warp to PVP Hub",Rotation:[180f,0f]}


# Port marker template
# summon marker ~ ~ ~ {Tags:["pvp_hub__port"],CustomName:"PVP Hub Warp Port",Rotation:[180f,0f]}


# Particle effect
execute at @e[tag=warp_marker] run function klawrz:particles/warp_particle


# Handle interactions with warp stands
execute at @e[tag=warp_marker, tag=!trial_dial_warp] as @p[distance=..0.5] run function klawrz:warps/handle_warps


#
#
#
#
#


# # # # # # # # # # # # # # # # # #
#             Treasury            #
# # # # # # # # # # # # # # # # # #

# Handle treasury tick
function klawrz:treasury/handle_treasury


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
execute as @a[scores={challenge.exit=1..}] run function klawrz:challenges/challenge_exit




#
#
# #
# # # # # # # # # # # # # #
# #  Crimson Room  Trial  #
# # # # # # # # # # # # # #
# #
#
#

# Player no longer active in trials on death
execute as @a[scores={health=0}] run scoreboard players reset @a challenge.crimson_room.init

# Kill dropped item frames
execute at @e[tag=crimson_room__item_reset] as @e[type=item,nbt={Item: {id:"minecraft:item_frame"}},distance=..30] run kill @s
execute at @e[tag=crimson_room__item_reset] as @e[type=item,nbt={Item: {id:"minecraft:glow_item_frame"}},distance=..30] run kill @s

# # Ensure player has no inventory before entering trial
#
# clear collision state
tag @a remove trial_near

# (re)tag players who are colliding but have items (blocked)
execute at @e[tag=trial_dial_warp] as @a[distance=..1.2] if entity @e[tag=trial_dial_frame,nbt={ItemRotation:0b}] unless data entity @s {Inventory:[]} run tag @s add trial_near

# run Trial Dial handler
function klawrz:trials/handle_trial_dial

# Kill dropped paintings
execute at @e[tag=crimson_room__item_reset] as @e[type=item,nbt={Item: {id:"minecraft:painting"}},distance=..30] run kill @s

# Make bone meal drops placeable
execute at @e[tag=crimson_room__item_reset] as @e[type=item, nbt={Item: {id:"minecraft:bone_meal"}}, distance=..30] run data merge entity @s {Item: {components: {"minecraft:custom_data": {CrimsonRoomNeedsReset: 1b}, "minecraft:can_place_on": {blocks: "minecraft:twisting_vines"}, tooltip_display: {hidden_components:["can_place_on"]}}}}

# Handle item frames
# 
# # Crimson frames
execute at @e[tag=crimson_frame_marker] unless entity @e[tag=crimson_frame] run summon minecraft:item_frame ~ ~ ~ {Tags:["crimson_frame", "crimson_room__needs_reset"], Facing: 4b}
# # Saffron frames
execute at @e[tag=saffron_frame_marker] unless entity @e[tag=saffron_frame_01, dx=0, dz=0] run summon minecraft:glow_item_frame ~ ~ ~ {Tags:["saffron_frame_01", "crimson_room__needs_reset"], Facing: 1b}
execute at @e[tag=saffron_frame_marker] unless entity @e[tag=saffron_frame_02, dx=1, dz=0] run summon minecraft:glow_item_frame ~1 ~ ~ {Tags:["saffron_frame_02", "crimson_room__needs_reset"], Facing: 1b}
execute at @e[tag=saffron_frame_marker] unless entity @e[tag=saffron_frame_03, dx=0, dz=1] run summon minecraft:glow_item_frame ~ ~ ~1 {Tags:["saffron_frame_03", "crimson_room__needs_reset"], Facing: 1b}
execute at @e[tag=saffron_frame_marker] unless entity @e[tag=saffron_frame_04, dx=1, dz=1] run summon minecraft:glow_item_frame ~1 ~ ~1 {Tags:["saffron_frame_04", "crimson_room__needs_reset"], Facing: 1b}

# Handle bucket placement - Players should be able to collect water, as well as place water anywhere in the blue room
# # If holding an EMPTY bucket
execute as @a[scores={challenge.crimson_room.init=1..}] if data entity @s SelectedItem{id:"minecraft:bucket"} run item replace entity @s weapon.mainhand with minecraft:bucket[custom_data={CobaltEmptyBucket:1b,CrimsonRoomNeedsReset:1b}, can_place_on=[{blocks:"minecraft:water"},{blocks:"minecraft:chest",state:{waterlogged:"true"}},{blocks:"minecraft:blue_candle",state:{waterlogged:"true"}}], tooltip_display={hidden_components:["can_place_on"]}]

# # If holding a WATER bucket
execute as @a[scores={challenge.crimson_room.init=1..}] if data entity @s SelectedItem{id:"minecraft:water_bucket"} run item replace entity @s weapon.mainhand with minecraft:water_bucket[custom_data={CobaltWaterBucket:1b,CrimsonRoomNeedsReset:1b}, can_place_on=[{blocks: ["minecraft:warped_stem", "minecraft:blue_concrete", "minecraft:blue_concrete_powder", "minecraft:blue_stained_glass", "minecraft:blue_glazed_terracotta", "minecraft:chest", "minecraft:blue_bed", "minecraft:blue_carpet"]}]]

# Handle archery
# # Handle arrow shooting
execute at @p[scores={challenge.crimson_room.init=1}] as @e[distance=..50, type=minecraft:arrow, nbt={inGround: 1b}] run function klawrz:challenges/crimson_room/viridian_room/viridian_bow

# # Handle target placement incase it dies by fire
execute at @e[tag=viridian_target_marker] unless block ~ ~ ~ target run setblock ~ ~ ~ target

#
# # # # # # # # #
# Crimson  Room #
# # # # # # # # #
#
# Handle Crimson Room
execute as @p[scores={challenge.crimson_room.init=1}] run function klawrz:challenges/crimson_room/crimson_room/handle_crimson_room


#
# # # # # # # # #
#  Cobalt Room  #
# # # # # # # # #
#
# Handle Cobalt Room
execute as @p[scores={challenge.crimson_room.init=1}] run function klawrz:challenges/crimson_room/cobalt_room/handle_cobalt_room


#
# # # # # # # # #
# Viridian Room #
# # # # # # # # #
#
# Handle Viridian Room
execute as @p[scores={challenge.crimson_room.init=1}] run function klawrz:challenges/crimson_room/viridian_room/handle_viridian_room


#
# # # # # # # # #
# Saffron  Room #
# # # # # # # # #
#
# Handle Saffron Room
execute as @p[scores={challenge.crimson_room.init=1}] run function klawrz:challenges/crimson_room/saffron_room/handle_saffron_room


#
# # # # # # # # #
# Amethyst Room #
# # # # # # # # #
#
# Handle Amethyst Room
execute as @p[scores={challenge.crimson_room.init=1}] run function klawrz:challenges/crimson_room/amethyst_room/handle_amethyst_room
