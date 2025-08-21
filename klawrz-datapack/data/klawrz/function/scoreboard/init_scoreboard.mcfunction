# Miscellaneous 
scoreboard objectives add entities dummy
scoreboard objectives add health dummy
scoreboard objectives add isTrue dummy
scoreboard objectives add bool dummy

# Treasury cooldown counter
scoreboard objectives add treasury_cd dummy

# Exit the puzzle
scoreboard objectives add challenge.exit trigger

# init the puzzle
scoreboard objectives add challenge.crimson_room.init dummy

# Room completion to track player progress
scoreboard objectives add challenge.crimson_room.complete dummy
scoreboard objectives add challenge.cobalt_room.complete dummy
scoreboard objectives add challenge.viridian_room.complete dummy
scoreboard objectives add challenge.saffron_room.complete dummy
scoreboard objectives add challenge.amethyst_room.complete dummy

# Track full puzzle completion
scoreboard objectives add challenge.crimson_room.fully_completed dummy

# Viridian bone meal
scoreboard objectives add challenge.usedBoneMeal minecraft.used:minecraft.bone_meal

# Saffron Maze and Rails
scoreboard objectives add saffron_maze dummy
scoreboard players set $last saffron_maze -1

scoreboard objectives add saffron_rails dummy
scoreboard players set $last saffron_rails -1

# Amethyst Memory
scoreboard objectives add challenge.amethyst_memory dummy

# # Fresh scoreboard/storage data
scoreboard players set #mem challenge.amethyst_memory 0
data remove storage minecraft:amethyst_memory waiting

# Amethyst Potion
scoreboard objectives add challenge.thrownPotion minecraft.used:minecraft.splash_potion

# Exit portal
#
# # add charge counter
scoreboard objectives add portal_charge dummy

# # add ambient counter
scoreboard objectives add portal_sound dummy

# # add cooldown timer
scoreboard objectives add portal_cd dummy

