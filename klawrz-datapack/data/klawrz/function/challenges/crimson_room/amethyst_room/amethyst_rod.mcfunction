# Prevent rod from respawning if the player picked it up
execute as @p[scores={challenge.crimson_room.init=1}, nbt={Inventory: [{components: {"minecraft:custom_data": {Key4: 1b}}}]}] run tag @e[tag=amethyst_rod_marker] add done_rod

# Prevent rod from respawning if the allay picked it up
execute as @e[type=allay, distance=..5, nbt={Inventory: [{components: {"minecraft:custom_data": {Key4: 1b}}}]}] run tag @e[tag=amethyst_rod_marker] add done_rod

# Spawn a new rod if it despawns
execute at @e[tag=amethyst_rod_marker] unless entity @e[type=item, nbt={Item: {components: {"minecraft:custom_data": {SaffronKey:1b, Key4: 1b}}}}] unless entity @e[type=allay, nbt={Inventory: [{components: {"minecraft:custom_data": {Key4: 1b}}}]}] as @p[scores={challenge.crimson_room.init=1}] unless entity @s[nbt={Inventory: [{components: {"minecraft:custom_data": {Key4: 1b}}}]}] run summon item ~ ~ ~ {Item: {id:"minecraft:end_rod", count: 1b, components: {"minecraft:custom_name": {"text":"Portal Stabilizer","color":"light_purple"}, "minecraft:lore": [{"text":"Do you know what this is for?", "color":"dark_gray"}, {"text":"I do. Do you? Maybe not...", "color":"dark_gray"}], "minecraft:custom_data": {CrimsonRoomNeedsReset: 1b, SaffronKey: 1b, Key4:1b}}}}