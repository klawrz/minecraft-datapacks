# All 3 doors closed
#
# 3rd door dead end closed
execute at @e[tag=saffron_maze_marker] if block ~ ~ ~ spruce_door[open=false] if block ~5 ~ ~ spruce_door[open=false] if block ~8 ~ ~ spruce_door[open=false] run fill ~5 ~ ~2 ~5 ~1 ~2 yellow_concrete

# All 3 doors open
#
# 3rd door dead end opens
execute at @e[tag=saffron_maze_marker] if block ~ ~ ~ spruce_door[open=true] if block ~5 ~ ~ spruce_door[open=true] if block ~8 ~ ~ spruce_door[open=true] run fill ~5 ~ ~2 ~5 ~1 ~2 air

# 2nd and 3rd open, 1st door closed
#
# 3rd door dead end closed
execute at @e[tag=saffron_maze_marker] if block ~ ~ ~ spruce_door[open=false] if block ~5 ~ ~ spruce_door[open=true] if block ~8 ~ ~ spruce_door[open=true] run fill ~5 ~ ~2 ~5 ~1 ~2 yellow_concrete

# 1st and 3rd open, 2nd door closed
#
# 3rd door dead end closed
execute at @e[tag=saffron_maze_marker] if block ~ ~ ~ spruce_door[open=true] if block ~5 ~ ~ spruce_door[open=false] if block ~8 ~ ~ spruce_door[open=true] run fill ~5 ~ ~2 ~5 ~1 ~2 yellow_concrete

# 1st and 2nd open, 3rd door closed
#
# 3rd door dead end closed
execute at @e[tag=saffron_maze_marker] if block ~ ~ ~ spruce_door[open=true] if block ~5 ~ ~ spruce_door[open=true] if block ~8 ~ ~ spruce_door[open=false] run fill ~5 ~ ~2 ~5 ~1 ~2 yellow_concrete

# 2nd and 3rd door closed, 1st open
#
# 3rd door dead end closed
execute at @e[tag=saffron_maze_marker] if block ~ ~ ~ spruce_door[open=true] if block ~5 ~ ~ spruce_door[open=false] if block ~8 ~ ~ spruce_door[open=false] run fill ~5 ~ ~2 ~5 ~1 ~2 yellow_concrete

# 1st and 3rd door closed, 2nd open
#
# 3rd door dead end closed
execute at @e[tag=saffron_maze_marker] if block ~ ~ ~ spruce_door[open=false] if block ~5 ~ ~ spruce_door[open=true] if block ~8 ~ ~ spruce_door[open=false] run fill ~5 ~ ~2 ~5 ~1 ~2 yellow_concrete

# 1st and 2nd door closed, 3rd open
#
# 3rd door dead end closed
execute at @e[tag=saffron_maze_marker] if block ~ ~ ~ spruce_door[open=false] if block ~5 ~ ~ spruce_door[open=false] if block ~8 ~ ~ spruce_door[open=true] run fill ~5 ~ ~2 ~5 ~1 ~2 yellow_concrete