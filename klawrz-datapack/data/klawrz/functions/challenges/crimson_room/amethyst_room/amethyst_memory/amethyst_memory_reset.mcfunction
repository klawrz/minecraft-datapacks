# Prevent function firing again
tag @s remove flipped

# Audible failure feedback
function klawrz:sfx/sfx_fail

# Set all skellies back to default (amethyst)
data merge entity @s {ArmorItems: [{}, {}, {}, {id:"minecraft:budding_amethyst", Count:1b}], HandItems: [{id:"minecraft:budding_amethyst", Count:1b}, {id:"minecraft:budding_amethyst", Count:1b}]}

# Reset tracking score
scoreboard players set #mem challenge.amethyst_memory 0