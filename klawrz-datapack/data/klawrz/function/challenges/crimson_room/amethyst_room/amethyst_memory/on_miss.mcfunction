# Sad sfx
function klawrz:sfx/sfx_fail

# Reset everything
tag @e[tag=amethyst_skeleton] remove first
tag @e[tag=amethyst_skeleton] remove locked
tag @e[tag=amethyst_skeleton] remove flipped
scoreboard players set #mem challenge.amethyst_memory 0
data remove storage minecraft:amethyst_memory waiting

# Re-apply the default gear
execute as @e[tag=amethyst_skeleton] run data merge entity @s {equipment:{head:{id:"minecraft:budding_amethyst",count:1},mainhand:{id:"minecraft:budding_amethyst",count:1},offhand:{id:"minecraft:budding_amethyst",count:1}}}
