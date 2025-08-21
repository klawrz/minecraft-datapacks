#
# # # # # # # # #
# General Tasks #
# # # # # # # # #
#

# Play warp sound to surrounding players when someone uses warp
#execute at @e[tag=warp_marker] as @p[distance=..0.5] run function klawrz:sfx/sfx_warp

# Reset trapdoor gates when someone uses warp
execute at @e[tag=warp_marker] as @p[distance=..0.5] run function klawrz:warps/warp_reset_gates


#
# # # # # # # # #
# General Warps #
# # # # # # # # #
#

# Warp to Warp Hub
execute at @e[tag=to_warp_hub] as @p[distance=..0.5] run function klawrz:warps/warp_warp_hub

# Warp to PVP Hub
execute at @e[tag=to_pvp_hub] as @p[distance=..0.5] run function klawrz:warps/warp_pvp_hub

# Warp to PVP Hub 2nd floor
execute at @e[tag=to_pvp_hub_floor_2] as @p[distance=..0.5] run function klawrz:warps/warp_pvp_hub_floor_2

# Warp to Trials
execute at @e[tag=to_trials] as @p[distance=..0.5] run function klawrz:warps/warp_trials

# Warp to Arena Towers
execute at @e[tag=to_arena_towers] as @p[distance=..0.5] run function klawrz:warps/warp_arena_towers

# Warp to Treasury
execute at @e[tag=to_treasury] as @p[distance=..0.5] run function klawrz:warps/warp_treasury

# Warp to Your Village
execute at @e[tag=to_your_village] as @p[distance=..0.5] run function klawrz:warps/warp_your_village