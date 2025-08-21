# Ignore if we already locked this skeleton (shouldn’t happen because of the tick filter)
execute if entity @s[tag=locked] run return 1

# FIRST PICK: run a subfunction once when we’re not waiting yet
execute unless data storage minecraft:amethyst_memory {waiting:1b} run function klawrz:challenges/crimson_room/amethyst_room/amethyst_memory/first_pick

# SECOND PICK: only if we’re waiting, and not the same skeleton
execute if data storage minecraft:amethyst_memory {waiting:1b} as @s[tag=!first] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_memory/second_pick
