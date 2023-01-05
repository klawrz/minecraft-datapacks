# Add tag to prevent function from repeating
tag @s add has_duplicated

# Tag the duplicate allay so it gets deleted
tag @e[type=allay, distance=..50] add crimson_room__needs_reset

# Make sure allays are silent when they die
data merge entity @e[limit=1, type=allay, tag=!has_duplicated] {Silent: 1b}

# Audible feedback that something was unlocked
function klawrz:sfx/sfx_complete

# Raise stairs on either side of room
#
# # Left side
#
# # # Hi
fill ~ ~ ~ ~ ~1 ~ purpur_block
# # # Mid
setblock ~1 ~ ~ purpur_block
setblock ~1 ~1 ~ purpur_slab
# # # Lo
setblock ~2 ~ ~ purpur_block
#
# # Right side
#
# # # Lo
setblock ~9 ~ ~ purpur_block
# # # Mid
setblock ~10 ~ ~ purpur_block
setblock ~10 ~1 ~ purpur_slab
# # # Hi
fill ~11 ~ ~ ~11 ~1 ~ purpur_block