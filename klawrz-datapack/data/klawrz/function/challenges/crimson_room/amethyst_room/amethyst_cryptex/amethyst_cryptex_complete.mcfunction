# Prevent function from firing again
tag @s add done_cryptex

# Audible success feedback
function klawrz:sfx/sfx_complete

# Open passage
fill ~-1 ~-1 ~1 ~-1 ~4 ~-10 air

# Turn on lights in Memory room
execute at @e[tag=amethyst_memory_marker] run place template klawrz:crimson_room/amethyst_memory_lights
