#
# # # # # # # # #
# Saffron Rails #
# # # # # # # # #
#


# Config 1 // all 3 trapdoors closed
execute at @e[tag=saffron_rails_marker] if block ~ ~ ~ spruce_trapdoor[open=false] if block ~1 ~ ~ spruce_trapdoor[open=false] if block ~2 ~ ~ spruce_trapdoor[open=false] at @e[tag=origin__saffron_rails] run place template minecraft:saffron_rails_01


# Config 2 // all 3 trapdoors open
execute at @e[tag=saffron_rails_marker] if block ~ ~ ~ spruce_trapdoor[open=true] if block ~1 ~ ~ spruce_trapdoor[open=true] if block ~2 ~ ~ spruce_trapdoor[open=true] at @e[tag=origin__saffron_rails] run place template minecraft:saffron_rails_02


# Config 3 // 2nd trapdoor closed
execute at @e[tag=saffron_rails_marker] if block ~ ~ ~ spruce_trapdoor[open=true] if block ~1 ~ ~ spruce_trapdoor[open=false] if block ~2 ~ ~ spruce_trapdoor[open=true] at @e[tag=origin__saffron_rails] run place template minecraft:saffron_rails_03


# Config 4 // 3rd trapdoor open
execute at @e[tag=saffron_rails_marker] if block ~ ~ ~ spruce_trapdoor[open=false] if block ~1 ~ ~ spruce_trapdoor[open=false] if block ~2 ~ ~ spruce_trapdoor[open=true] at @e[tag=origin__saffron_rails] run place template minecraft:saffron_rails_04


# Config 5 // 1st trapdoor closed
execute at @e[tag=saffron_rails_marker] if block ~ ~ ~ spruce_trapdoor[open=false] if block ~1 ~ ~ spruce_trapdoor[open=true] if block ~2 ~ ~ spruce_trapdoor[open=true] at @e[tag=origin__saffron_rails] run place template minecraft:saffron_rails_05


# Config 6 // 2nd trapdoor open
execute at @e[tag=saffron_rails_marker] if block ~ ~ ~ spruce_trapdoor[open=false] if block ~1 ~ ~ spruce_trapdoor[open=true] if block ~2 ~ ~ spruce_trapdoor[open=false] at @e[tag=origin__saffron_rails] run place template minecraft:saffron_rails_06


# Config 7 // 3rd trapdoor closed
execute at @e[tag=saffron_rails_marker] if block ~ ~ ~ spruce_trapdoor[open=true] if block ~1 ~ ~ spruce_trapdoor[open=true] if block ~2 ~ ~ spruce_trapdoor[open=false] at @e[tag=origin__saffron_rails] run place template minecraft:saffron_rails_07


# Config 8 // 1st trapdoor open
execute at @e[tag=saffron_rails_marker] if block ~ ~ ~ spruce_trapdoor[open=true] if block ~1 ~ ~ spruce_trapdoor[open=false] if block ~2 ~ ~ spruce_trapdoor[open=false] at @e[tag=origin__saffron_rails] run place template minecraft:saffron_rails_08



# Solution
#
# # With all 3 trapdoors closed, launch minecart
# # Quickly open all 3 trapdoors to let the minecart gain momentum by passing over powered rails
# # Close the middle trapdoor
# # close the left trapdoor
# # open the middle trapdoor
# # close the right trapdoor
# # open the left trapdoor
# # close the middle trapdoor
