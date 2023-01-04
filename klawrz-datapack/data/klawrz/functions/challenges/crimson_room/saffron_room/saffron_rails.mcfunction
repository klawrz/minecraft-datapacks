#
# # # # # # # # #
# Saffron Rails #
# # # # # # # # #
#


# Config 1 // all 3 levers off
execute at @e[tag=saffron_rails_marker] if block ~ ~ ~ lever[powered=false] if block ~1 ~ ~ lever[powered=false] if block ~2 ~ ~ lever[powered=false] at @e[tag=origin__saffron_rails] run place template minecraft:saffron_rails_01


# Config 2 // all 3 levers powered
execute at @e[tag=saffron_rails_marker] if block ~ ~ ~ lever[powered=true] if block ~1 ~ ~ lever[powered=true] if block ~2 ~ ~ lever[powered=true] at @e[tag=origin__saffron_rails] run place template minecraft:saffron_rails_02


# Config 3 // 2nd lever off
execute at @e[tag=saffron_rails_marker] if block ~ ~ ~ lever[powered=true] if block ~1 ~ ~ lever[powered=false] if block ~2 ~ ~ lever[powered=true] at @e[tag=origin__saffron_rails] run place template minecraft:saffron_rails_03


# Config 4 // 3rd lever powered
execute at @e[tag=saffron_rails_marker] if block ~ ~ ~ lever[powered=false] if block ~1 ~ ~ lever[powered=false] if block ~2 ~ ~ lever[powered=true] at @e[tag=origin__saffron_rails] run place template minecraft:saffron_rails_04


# Config 5 // 1st lever off
execute at @e[tag=saffron_rails_marker] if block ~ ~ ~ lever[powered=false] if block ~1 ~ ~ lever[powered=true] if block ~2 ~ ~ lever[powered=true] at @e[tag=origin__saffron_rails] run place template minecraft:saffron_rails_05


# Config 6 // 2nd lever powered
execute at @e[tag=saffron_rails_marker] if block ~ ~ ~ lever[powered=false] if block ~1 ~ ~ lever[powered=true] if block ~2 ~ ~ lever[powered=false] at @e[tag=origin__saffron_rails] run place template minecraft:saffron_rails_06


# Config 7 // 3rd lever off
execute at @e[tag=saffron_rails_marker] if block ~ ~ ~ lever[powered=true] if block ~1 ~ ~ lever[powered=true] if block ~2 ~ ~ lever[powered=false] at @e[tag=origin__saffron_rails] run place template minecraft:saffron_rails_07


# Config 8 // 1st lever powered
execute at @e[tag=saffron_rails_marker] if block ~ ~ ~ lever[powered=true] if block ~1 ~ ~ lever[powered=false] if block ~2 ~ ~ lever[powered=false] at @e[tag=origin__saffron_rails] run place template minecraft:saffron_rails_08



# Solution
#
# # With all 3 levers off, launch minecart
# # Quickly powered all 3 levers to let the minecart gain momentum by passing over powered rails
# # Close the middle lever
# # close the left lever
# # powered the middle lever
# # close the right lever
# # powered the left lever
# # close the middle lever
