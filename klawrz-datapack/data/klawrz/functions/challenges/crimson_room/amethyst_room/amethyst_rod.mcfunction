# Prevent rod from respawning if the player picked it up
execute as @p[scores={challenge.crimson_room.init=1}, nbt={Inventory: [{tag: {Key4: 1b}}]}] run tag @e[tag=amethyst_rod_marker] add done_rod

# Prevent rod from respawning if the allay picked it up
execute as @e[type=allay, distance=..5, nbt={Inventory: [{tag: {Key4: 1b}}]}] run tag @e[tag=amethyst_rod_marker] add done_rod

# Spawn a new rod
execute at @e[tag=amethyst_rod_marker] unless entity @e[type=item, nbt={Item: {tag: {SaffronKey:1b, Key4: 1b}}}] unless entity @e[type=allay, nbt={Inventory: [{tag: {Key4: 1b}}]}] as @p[scores={challenge.crimson_room.init=1}] unless entity @s[nbt={Inventory: [{tag: {Key4: 1b}}]}] run summon item ~ ~ ~ {Item: {id:"minecraft:end_rod", Count: 1b, tag: {display: {Name: '{"text":"Portal Stabilizer","color":"light_purple"}', Lore: ['{"text":"Do you know what this is for?", "color":"dark_gray"}', '{"text":"I do. Do you? Maybe not...", "color":"dark_gray"}']}, CrimsonRoomNeedsReset: 1b, SaffronKey: 1b, Key4:1b}}}