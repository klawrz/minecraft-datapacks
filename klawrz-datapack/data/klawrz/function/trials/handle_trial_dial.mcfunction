#
# # # # # # # # #
#   Trial Hub   #
# # # # # # # # #
#

# warn completed players once (blocks re-entry)
execute as @a[tag=trial_near,tag=!trial_warned] if score @s challenge.crimson_room.fully_completed matches 1.. if entity @e[tag=trial_dial_frame,nbt={ItemRotation:0b}] run tellraw @s [{"text":"You already completed the ","color":"gray"},{"text":"Crimson Room","color":"dark_red"},{"text":".","color":"gray"}]

# soft beep for completed players
execute as @a[tag=trial_near,tag=!trial_warned] if score @s challenge.crimson_room.fully_completed matches 1.. if entity @e[tag=trial_dial_frame,nbt={ItemRotation:0b}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.6 0.6

# warn non-empty inventory players (only if NOT completed)
execute as @a[tag=trial_near,tag=!trial_warned] unless score @s challenge.crimson_room.fully_completed matches 1.. unless data entity @s {Inventory:[]} if entity @e[tag=trial_dial_frame,nbt={ItemRotation:0b}] run tellraw @s [{"text":"Empty your inventory to begin the ","color":"gray"},{"text":"Crimson Room","color":"dark_red"},{"text":" challenge.","color":"gray"}]

# play sound for non-empty inventory players (only if NOT completed)
execute as @a[tag=trial_near,tag=!trial_warned] unless score @s challenge.crimson_room.fully_completed matches 1.. unless data entity @s {Inventory:[]} if entity @e[tag=trial_dial_frame,nbt={ItemRotation:0b}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.6 0.6

# mark that we warned during this collision
tag @a[tag=trial_near,tag=!trial_warned] add trial_warned

# remove warned flag once they leave the collision
tag @a[tag=!trial_near,tag=trial_warned] remove trial_warned

# Initiate the Crimson Room challenge (only if NOT completed and inventory empty)
execute at @e[tag=trial_dial_warp] as @p[distance=..0.5] if entity @e[tag=trial_dial_frame,nbt={ItemRotation:0b}] unless score @s challenge.crimson_room.fully_completed matches 1.. if data entity @s {Inventory:[]} unless entity @a[scores={challenge.crimson_room.init=1}] run function klawrz:challenges/crimson_room/crimson_room_init
