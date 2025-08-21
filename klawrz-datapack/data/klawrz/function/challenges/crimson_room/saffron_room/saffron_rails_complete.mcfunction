# Prevent function from firing again
tag @s add done_rails

# Audible success feedback
function klawrz:sfx/sfx_complete

# Open the passage
fill ~-1 ~ ~-1 ~-3 ~1 ~-1 air

# Command Block Usage
# execute as @e[tag=saffron_rails_marker] as @s[tag=!done_rails] at @s run function klawrz:challenges/crimson_room/saffron_room/saffron_rails_complete