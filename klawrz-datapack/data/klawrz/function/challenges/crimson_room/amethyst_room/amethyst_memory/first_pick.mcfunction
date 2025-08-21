tag @s add first
scoreboard players operation #expected challenge.amethyst_memory = @s challenge.amethyst_memory
function klawrz:challenges/crimson_room/amethyst_room/amethyst_memory/equip_by_id
tag @s add flipped
data modify storage minecraft:amethyst_memory waiting set value 1b
return 1
