# Forceload to ensure the area is always ready for teleportation and usage
forceload add ~ ~

# Place the necessary structure origin markers
place template klawrz:pvp_hub/origin_pvp_hub ~ 150 ~
place template klawrz:pvp_hub/treasury/origin_treasury ~ 197 ~
place template klawrz:pvp_hub/warp_hub/origin_warp_hub ~ 197 ~24
place template klawrz:pvp_hub/trials/origin_trials ~ 209 ~
place template klawrz:crimson_room/origin_crimson_room ~ 230 ~

# Place the actual structures
function klawrz:structure_placement/place_pvp_hub
function klawrz:structure_placement/place_treasury
function klawrz:structure_placement/place_warp_hub
function klawrz:structure_placement/place_trials

# Teleport player into the Hub
function klawrz:warps/warp_pvp_hub