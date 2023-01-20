# Destroy iron bars when potions hit
execute as @e[type=minecraft:potion, nbt={Item: {tag: {AmethystPotion: 1b}}}] at @s if block ~ ~ ~ iron_bars run setblock ~ ~ ~ air

# Give a potion after current one thrown
execute as @p[scores={challenge.crimson_room.init=1}] unless entity @s[nbt={Inventory: [{tag: {AmethystPotion: 1b}}]}] run give @s splash_potion{id: "minecraft:splash_potion", CrimsonRoomNeedsReset:1b, AmethystPotion: 1b, CustomPotionColor:1965844, display: {Name: '{"text":"Highly Corrosive Splash Potion","color":"red"}', Lore: ['{"text":"So corrosive it could melt right","color":"dark_gray"}', '{"text":"through iron bars. Throwable too!","color":"dark_gray"}']}}

# Respawn end rod if it dies
execute unless block ~ ~ ~ iron_bars unless entity @e[type=glow_item_frame, dy=1] unless entity @e[type=item, nbt={Item: {tag: {SaffronKey:1b, Key4: 1b}}}] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_rod