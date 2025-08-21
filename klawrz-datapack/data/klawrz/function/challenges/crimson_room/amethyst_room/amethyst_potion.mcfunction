# Destroy iron bars when potions hit
execute as @e[tag=amethyst_rod_marker, tag=!melted] at @s if entity @e[type=minecraft:splash_potion, nbt={Item: {components: {"minecraft:custom_data":{AmethystPotion:1b}}}}, distance=..1.6] run function klawrz:challenges/crimson_room/amethyst_room/melt_bars

# Give a potion after current one thrown
execute as @a[scores={challenge.crimson_room.init=1.., challenge.thrownPotion=1..}] if entity @e[tag=amethyst_rod_marker, tag=!melted] run item replace entity @s weapon.mainhand with minecraft:splash_potion[custom_data={CrimsonRoomNeedsReset:1b,AmethystPotion:1b}, potion_contents={potion:"minecraft:water",custom_color:1965844}, custom_name={"text":"Highly Corrosive Splash Potion","color":"red"}, lore=[{"text":"So corrosive it could melt right","color":"dark_gray"},{"text":"through iron bars. Throwable too!","color":"dark_gray"}], tooltip_display={hidden_components:["minecraft:potion_contents"]}]
execute as @a[scores={challenge.crimson_room.init=1.., challenge.thrownPotion=1..}] if entity @e[tag=amethyst_rod_marker, tag=!melted] run scoreboard players set @s challenge.thrownPotion 0

# Respawn end rod if it dies
execute unless block ~ ~ ~ iron_bars unless entity @e[type=glow_item_frame,dy=1] unless entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{SaffronKey:1b,Key4:1b}}}}] run function klawrz:challenges/crimson_room/amethyst_room/amethyst_rod