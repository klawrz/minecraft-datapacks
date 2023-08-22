# Destroy book
execute as @p[scores={challenge.exit=1..}] run item replace entity @s weapon.mainhand with air

# Player is no longer active in Crimson Room
execute as @a[scores={challenge.exit=1.., challenge.crimson_room.init=1}] run scoreboard players reset @s challenge.crimson_room.init

# Reset challenge exit -- must be enabled/prepared again before next use
scoreboard players reset @a[scores={challenge.exit=1..}] challenge.exit

# Warp to PVP Hub
function klawrz:warps/warp_pvp_hub