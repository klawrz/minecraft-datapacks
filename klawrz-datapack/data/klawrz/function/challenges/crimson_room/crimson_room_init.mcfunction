# Player is active in Crimson Room challenge
scoreboard players set @s challenge.crimson_room.init 1

# Track completion
scoreboard players set @s challenge.crimson_room.fully_completed 0

# Ensure gamemode is set to Adventure
gamemode adventure @s

# Destroy all entities before placing them again
function klawrz:challenges/crimson_room/crimson_room_entity_reset

# Initiate 'complete' scores (some players may not be tracking these objectives, which are required for saving puzzle progress)
execute unless entity @s[scores={challenge.crimson_room.complete=1}] run scoreboard players set @s challenge.crimson_room.complete 0
execute unless entity @s[scores={challenge.cobalt_room.complete=1}] run scoreboard players set @s challenge.cobalt_room.complete 0
execute unless entity @s[scores={challenge.viridian_room.complete=1}] run scoreboard players set @s challenge.viridian_room.complete 0
execute unless entity @s[scores={challenge.saffron_room.complete=1}] run scoreboard players set @s challenge.saffron_room.complete 0
execute unless entity @s[scores={challenge.amethyst_room.complete=1}] run scoreboard players set @s challenge.amethyst_room.complete 0

# Place the correct room depending on player progress
execute at @e[tag=origin__crimson_room] if entity @s[scores={challenge.crimson_room.complete=0}] run place template klawrz:crimson_room/crimson_room ~1 ~1 ~1
execute at @e[tag=origin__crimson_room] if entity @s[scores={challenge.crimson_room.complete=1, challenge.cobalt_room.complete=0}] run place template klawrz:crimson_room/cobalt_room ~1 ~1 ~1
execute at @e[tag=origin__crimson_room] if entity @s[scores={challenge.crimson_room.complete=1, challenge.cobalt_room.complete=1, challenge.viridian_room.complete=0}] run place template klawrz:crimson_room/viridian_room ~1 ~1 ~1
execute at @e[tag=origin__crimson_room] if entity @s[scores={challenge.crimson_room.complete=1, challenge.cobalt_room.complete=1, challenge.viridian_room.complete=1, challenge.saffron_room.complete=0}] run place template klawrz:crimson_room/saffron_room ~1 ~1 ~1
execute at @e[tag=origin__crimson_room] if entity @s[scores={challenge.crimson_room.complete=1, challenge.cobalt_room.complete=1, challenge.viridian_room.complete=1, challenge.saffron_room.complete=1, challenge.amethyst_room.complete=0}] run place template klawrz:crimson_room/amethyst_room ~1 ~1 ~1

# Remove the sculk sensor so that it doesn't make a bunch of noise for those past viridian room
execute at @e[tag=viridian_sculk_marker] if entity @s[scores={challenge.viridian_room.complete=1}] run setblock ~ ~-1 ~ air

# Reset mini challenge scores
# # Saffron Maze
scoreboard players set $last saffron_maze -1

# # Saffron Rails
scoreboard players set $last saffron_rails -1

# # Amethyst Allays
scoreboard players set #allays entities 0

# # Amethyst Memory
scoreboard players set #mem challenge.amethyst_memory 0
function klawrz:challenges/crimson_room/amethyst_room/amethyst_memory/amethyst_memory_setup

# Destroy any items that drop as a result of resetting the challenge, as well as any key item being brought into the challenge
schedule function klawrz:challenges/crimson_room/crimson_room_item_reset 1s

# Give exit trial book
function klawrz:challenges/challenge_exit_book

# Warp player to challenge
function klawrz:warps/warp_crimson_room



# Green clue book
# give @p written_book[written_book_content={generation:3,pages:[{raw: "         \n\n\n\n\n             ③ ⇦"}],author:"Aerms",title:{raw:"Klawrz Log 1"},resolved:1b},lore=[{"text":"Old and torn","color":"dark_gray"}], custom_data={CrimsonRoomNeedsReset:1b}]

# Yellow clue book
# give @p written_book[written_book_content={generation:3,pages:[{raw:"         \n\n\n\n\n             \n\n\n\n\n⑤ →"}],author:"Aerms",title:{raw:"Klawrz Log 2"},resolved:1b},lore=[{"text":"Old and torn","color":"dark_gray"}], custom_data={CrimsonRoomNeedsReset:1b}]

# Purple clue book
# give @p written_book[written_book_content={generation:3,pages:[{raw: "         \n\n\n\n\n             \n\n\n\n\n② ⬇"}],author:"Aerms",title:{raw:"Klawrz Log 3"},resolved:1b},lore=[{"text":"Old and torn","color":"dark_gray"}], custom_data={CrimsonRoomNeedsReset:1b}]
