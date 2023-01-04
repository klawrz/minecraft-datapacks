#
# # # # # # # # #
# Saffron  Maze #
# # # # # # # # #
#


# Config 1 // all 3 doors closed // Path to exit
execute at @e[tag=saffron_maze_marker] if block ~8 ~ ~ spruce_door[open=false] if block ~5 ~ ~ spruce_door[open=false] if block ~ ~ ~ spruce_door[open=false] as @e[tag=origin__saffron_maze] at @s run place template minecraft:saffron_maze_01
# # Red:    closed
# # Orange: closed
# # Yellow: closed
# # Green:  closed
# # Blue:   closed
# # Cyan:   closed
# # Purple: closed
# # White:  open


# Config 2 // all 3 doors open // path to End Rod Hint
execute at @e[tag=saffron_maze_marker] if block ~8 ~ ~ spruce_door[open=true] if block ~5 ~ ~ spruce_door[open=true] if block ~ ~ ~ spruce_door[open=true] as @e[tag=origin__saffron_maze] at @s run place template minecraft:saffron_maze_02
# # Red:    closed
# # Orange: open
# # Yellow: closed
# # Green:  closed
# # Blue:   open
# # Cyan:   closed
# # Purple: open
# # White:  closed


# Config 3 // 1st door open
execute at @e[tag=saffron_maze_marker] if block ~8 ~ ~ spruce_door[open=true] if block ~5 ~ ~ spruce_door[open=false] if block ~ ~ ~ spruce_door[open=false] as @e[tag=origin__saffron_maze] at @s run place template minecraft:saffron_maze_03
# # Red:    closed
# # Orange: open
# # Yellow: closed
# # Green:  closed
# # Blue:   closed
# # Cyan:   closed
# # Purple: closed
# # White:  closed


# Config 4 // 2nd door open
execute at @e[tag=saffron_maze_marker] if block ~8 ~ ~ spruce_door[open=false] if block ~5 ~ ~ spruce_door[open=true] if block ~ ~ ~ spruce_door[open=false] as @e[tag=origin__saffron_maze] at @s run place template minecraft:saffron_maze_04
# # Red:    closed
# # Orange: open
# # Yellow: closed
# # Green:  closed
# # Blue:   closed
# # Cyan:   open
# # Purple: closed
# # White:  closed


# Config 5 // 3rd door open // Path to Yellow Candle
execute at @e[tag=saffron_maze_marker] if block ~8 ~ ~ spruce_door[open=false] if block ~5 ~ ~ spruce_door[open=false] if block ~ ~ ~ spruce_door[open=true] as @e[tag=origin__saffron_maze] at @s run place template minecraft:saffron_maze_05
# # Red:    open
# # Orange: closed
# # Yellow: closed
# # Green:  open
# # Blue:   closed
# # Cyan:   open
# # Purple: closed
# # White:  closed


# Config 6 // 1st door closed
execute at @e[tag=saffron_maze_marker] if block ~8 ~ ~ spruce_door[open=false] if block ~5 ~ ~ spruce_door[open=true] if block ~ ~ ~ spruce_door[open=true] as @e[tag=origin__saffron_maze] at @s run place template minecraft:saffron_maze_06
# # Red:    closed
# # Orange: closed
# # Yellow: closed
# # Green:  open
# # Blue:   open
# # Cyan:   closed
# # Purple: closed
# # White:  closed


# Config 7 // 2nd door closed // Path to Chorus Flower
execute at @e[tag=saffron_maze_marker] if block ~8 ~ ~ spruce_door[open=true] if block ~5 ~ ~ spruce_door[open=false] if block ~ ~ ~ spruce_door[open=true] as @e[tag=origin__saffron_maze] at @s run place template minecraft:saffron_maze_07
# # Red:    closed
# # Orange: closed
# # Yellow: open
# # Green:  closed
# # Blue:   closed
# # Cyan:   open
# # Purple: closed
# # White:  closed


# Config 8 // 3rd door closed
execute at @e[tag=saffron_maze_marker] if block ~8 ~ ~ spruce_door[open=true] if block ~5 ~ ~ spruce_door[open=true] if block ~ ~ ~ spruce_door[open=false] as @e[tag=origin__saffron_maze] at @s run place template minecraft:saffron_maze_08
# # Red:    closed
# # Orange: closed
# # Yellow: closed
# # Green:  open
# # Blue:   closed
# # Cyan:   open
# # Purple: closed
# # White:  closed



# Solution
#
# # To exit + grappling hook: With all 3 doors closed, open door 1 > step past the fluctuating block > close door 1 > proceed to end
#
# # To yellow candle: With all 3 doors closed, open door 3 > navigate to back left corner
#
# # To chorus flower: With all 3 doors open, Position player past door 2 fluctuating block > close door 2 > proceed to back middle
