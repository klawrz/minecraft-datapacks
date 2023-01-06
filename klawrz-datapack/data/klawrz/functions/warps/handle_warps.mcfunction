#
# # # # # # # # #
# General Tasks #
# # # # # # # # #
#

# Play warp sound to surrounding players when someone uses warp
execute at @e[tag=warp_stand] as @p[distance=..0.5] run function klawrz:sfx/sfx_warp

# Reset trapdoor gates when someone uses warp
execute at @e[tag=warp_stand] as @p[distance=..0.5] run function klawrz:warps/warp_reset_gates


#
# # # # # # # # #
# General Warps #
# # # # # # # # #
#

# Warp to Moria
execute at @e[tag=to_moria] as @p[distance=..0.5] run function klawrz:warps/warp_moria

# Warp to PVP Hub
execute at @e[tag=to_pvp_hub] as @p[distance=..0.5] run function klawrz:warps/warp_pvp_hub

# Warp to PVP Hub 2nd floor
execute at @e[tag=to_pvp_hub__floor_2] as @p[distance=..0.5] run function klawrz:warps/warp_pvp_hub_floor_2

# Warp to Trials
execute at @e[tag=to_trials] as @p[distance=..0.5] run function klawrz:warps/warp_trials

# Warp to Arena Towers
execute at @e[tag=to_arena_towers] as @p[distance=..0.5] run function klawrz:warps/warp_arena_towers

# Warp to Treasury
execute at @e[tag=to_treasury] as @p[distance=..0.5] run function klawrz:warps/warp_treasury




#
# # # # # # # # #
#   Moria Hub   #
# # # # # # # # #
#

# warp to PVP Hub
execute at @e[tag=moria_warp_hub__warp] as @p[distance=..0.5] if entity @e[tag=moria_warp_frame, nbt={ItemRotation: 4b}] run function klawrz:warps/warp_pvp_hub

# warp to Doozza Village
execute at @e[tag=moria_warp_hub__warp] as @p[distance=..0.5] if entity @e[tag=moria_warp_frame, nbt={ItemRotation: 5b}] run function klawrz:warps/warp_doozza_village


#
# # # # # # # # #
#   Trial Hub   #
# # # # # # # # #
#

# Initiate the Crimson Room challenge
execute at @e[tag=trial_dial_warp] as @p[distance=..0.5] if entity @e[tag=trial_dial_frame, nbt={ItemRotation: 0b}] unless entity @a[scores={challenge.crimson_room.init=1}] run function klawrz:challenges/crimson_room/crimson_room_init
