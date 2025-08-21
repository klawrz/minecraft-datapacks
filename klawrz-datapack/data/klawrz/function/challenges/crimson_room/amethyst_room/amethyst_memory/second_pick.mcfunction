# Reveal this second skeleton
function klawrz:challenges/crimson_room/amethyst_room/amethyst_memory/equip_by_id
tag @s add flipped

# MATCH?
execute if score @s challenge.amethyst_memory = #expected challenge.amethyst_memory run function klawrz:challenges/crimson_room/amethyst_room/amethyst_memory/on_match
# MISMATCH?
execute unless score @s challenge.amethyst_memory = #expected challenge.amethyst_memory run function klawrz:challenges/crimson_room/amethyst_room/amethyst_memory/on_miss