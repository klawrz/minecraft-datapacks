#
# # # # # # # # #
# Saffron  Maze #
# # # # # # # # #
#

# Reset
scoreboard players set $combo saffron_maze 0

# Add bits based on door state
execute at @e[tag=saffron_maze_marker] if block ~ ~ ~ spruce_door[open=true] run scoreboard players add $combo saffron_maze 1
execute at @e[tag=saffron_maze_marker] if block ~5 ~ ~ spruce_door[open=true] run scoreboard players add $combo saffron_maze 2
execute at @e[tag=saffron_maze_marker] if block ~8 ~ ~ spruce_door[open=true] run scoreboard players add $combo saffron_maze 4

# Place only when value changed (map 0..7 → your templates)
# # Config 1 // all 3 doors closed // Path to exit // Bit 0
execute unless score $combo saffron_maze = $last saffron_maze as @e[tag=origin__saffron_maze,sort=nearest,limit=1] at @s if score $combo saffron_maze matches 0 run place template klawrz:crimson_room/saffron_maze_01

# # Config 2 // all 3 doors open // path to End Rod Hint // Bit 7
execute unless score $combo saffron_maze = $last saffron_maze as @e[tag=origin__saffron_maze,sort=nearest,limit=1] at @s if score $combo saffron_maze matches 7 run place template klawrz:crimson_room/saffron_maze_02

# # Config 3 // 1st door open // Bit 4
execute unless score $combo saffron_maze = $last saffron_maze as @e[tag=origin__saffron_maze,sort=nearest,limit=1] at @s if score $combo saffron_maze matches 4 run place template klawrz:crimson_room/saffron_maze_03

# # Config 4 // 2nd door open // Bit 2
execute unless score $combo saffron_maze = $last saffron_maze as @e[tag=origin__saffron_maze,sort=nearest,limit=1] at @s if score $combo saffron_maze matches 2 run place template klawrz:crimson_room/saffron_maze_04

# # Config 5 // 3rd door open // Path to Yellow Candle // Bit 1
execute unless score $combo saffron_maze = $last saffron_maze as @e[tag=origin__saffron_maze,sort=nearest,limit=1] at @s if score $combo saffron_maze matches 1 run place template klawrz:crimson_room/saffron_maze_05

# # Config 6 // 1st door closed // Bit 3
execute unless score $combo saffron_maze = $last saffron_maze as @e[tag=origin__saffron_maze,sort=nearest,limit=1] at @s if score $combo saffron_maze matches 3 run place template klawrz:crimson_room/saffron_maze_06

# # Config 7 // 2nd door closed // Path to Chorus Flower // Bit 5
execute unless score $combo saffron_maze = $last saffron_maze as @e[tag=origin__saffron_maze,sort=nearest,limit=1] at @s if score $combo saffron_maze matches 5 run place template klawrz:crimson_room/saffron_maze_07

# # Config 8 // 3rd door closed // Bit 6
execute unless score $combo saffron_maze = $last saffron_maze as @e[tag=origin__saffron_maze,sort=nearest,limit=1] at @s if score $combo saffron_maze matches 6 run place template klawrz:crimson_room/saffron_maze_08


# Update the remembered value (only if we placed)
execute unless score $combo saffron_maze = $last saffron_maze run scoreboard players operation $last saffron_maze = $combo saffron_maze

# Solution
#
# # To exit + grappling hook: With all 3 doors closed, open door 1 > step past the fluctuating block > close door 1 > proceed to end
#
# # To yellow candle: With all 3 doors closed, open door 3 > navigate to back left corner
#
# # To End Rod Hint: With all 3 doors open, enter door 2 and proceed to the hint
#
# # To chorus flower: With all 3 doors open, Position player past door 2 fluctuating block > close door 2 > proceed to back middle



# Not sure what these colour-specific notes are for, but ill leave em for now and copy them somewhere else later
# Config 1 // all 3 doors closed // Path to exit
#execute at @e[tag=saffron_maze_marker] if block ~8 ~ ~ spruce_door[open=false] if block ~5 ~ ~ spruce_door[open=false] if block ~ ~ ~ spruce_door[open=false] as @e[tag=origin__saffron_maze] at @s run place template klawrz:crimson_room/saffron_maze_01
# # Red:    closed
# # Orange: closed
# # Yellow: closed
# # Green:  closed
# # Blue:   closed
# # Cyan:   closed
# # Purple: closed
# # White:  open


# Config 2 // all 3 doors open // path to End Rod Hint
#execute at @e[tag=saffron_maze_marker] if block ~8 ~ ~ spruce_door[open=true] if block ~5 ~ ~ spruce_door[open=true] if block ~ ~ ~ spruce_door[open=true] as @e[tag=origin__saffron_maze] at @s run place template klawrz:crimson_room/saffron_maze_02
# # Red:    closed
# # Orange: open
# # Yellow: closed
# # Green:  closed
# # Blue:   open
# # Cyan:   closed
# # Purple: open
# # White:  closed


# Config 3 // 1st door open
#execute at @e[tag=saffron_maze_marker] if block ~8 ~ ~ spruce_door[open=true] if block ~5 ~ ~ spruce_door[open=false] if block ~ ~ ~ spruce_door[open=false] as @e[tag=origin__saffron_maze] at @s run place template klawrz:crimson_room/saffron_maze_03
# # Red:    closed
# # Orange: open
# # Yellow: closed
# # Green:  closed
# # Blue:   closed
# # Cyan:   closed
# # Purple: closed
# # White:  closed


# Config 4 // 2nd door open
#execute at @e[tag=saffron_maze_marker] if block ~8 ~ ~ spruce_door[open=false] if block ~5 ~ ~ spruce_door[open=true] if block ~ ~ ~ spruce_door[open=false] as @e[tag=origin__saffron_maze] at @s run place template klawrz:crimson_room/saffron_maze_04
# # Red:    closed
# # Orange: open
# # Yellow: closed
# # Green:  closed
# # Blue:   closed
# # Cyan:   open
# # Purple: closed
# # White:  closed


# Config 5 // 3rd door open // Path to Yellow Candle
#execute at @e[tag=saffron_maze_marker] if block ~8 ~ ~ spruce_door[open=false] if block ~5 ~ ~ spruce_door[open=false] if block ~ ~ ~ spruce_door[open=true] as @e[tag=origin__saffron_maze] at @s run place template klawrz:crimson_room/saffron_maze_05
# # Red:    open
# # Orange: closed
# # Yellow: closed
# # Green:  open
# # Blue:   closed
# # Cyan:   open
# # Purple: closed
# # White:  closed


# Config 6 // 1st door closed
#execute at @e[tag=saffron_maze_marker] if block ~8 ~ ~ spruce_door[open=false] if block ~5 ~ ~ spruce_door[open=true] if block ~ ~ ~ spruce_door[open=true] as @e[tag=origin__saffron_maze] at @s run place template klawrz:crimson_room/saffron_maze_06
# # Red:    closed
# # Orange: closed
# # Yellow: closed
# # Green:  open
# # Blue:   open
# # Cyan:   closed
# # Purple: closed
# # White:  closed


# Config 7 // 2nd door closed // Path to Chorus Flower
#execute at @e[tag=saffron_maze_marker] if block ~8 ~ ~ spruce_door[open=true] if block ~5 ~ ~ spruce_door[open=false] if block ~ ~ ~ spruce_door[open=true] as @e[tag=origin__saffron_maze] at @s run place template klawrz:crimson_room/saffron_maze_07
# # Red:    closed
# # Orange: closed
# # Yellow: open
# # Green:  closed
# # Blue:   closed
# # Cyan:   open
# # Purple: closed
# # White:  closed


# Config 8 // 3rd door closed
#execute at @e[tag=saffron_maze_marker] if block ~8 ~ ~ spruce_door[open=true] if block ~5 ~ ~ spruce_door[open=true] if block ~ ~ ~ spruce_door[open=false] as @e[tag=origin__saffron_maze] at @s run place template klawrz:crimson_room/saffron_maze_08
# # Red:    closed
# # Orange: closed
# # Yellow: closed
# # Green:  open
# # Blue:   closed
# # Cyan:   open
# # Purple: closed
# # White:  closed