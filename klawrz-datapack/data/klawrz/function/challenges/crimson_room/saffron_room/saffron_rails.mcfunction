#
# # # # # # # # #
# Saffron Rails #
# # # # # # # # #
#

# Recompute combo (0..7) from levers at ~, ~1, ~2 relative to saffron_rails_marker
scoreboard players set $combo saffron_rails 0
execute at @e[tag=saffron_rails_marker,limit=1] if block ~ ~ ~ lever[powered=true] run scoreboard players add $combo saffron_rails 1
execute at @e[tag=saffron_rails_marker,limit=1] if block ~1 ~ ~ lever[powered=true] run scoreboard players add $combo saffron_rails 2
execute at @e[tag=saffron_rails_marker,limit=1] if block ~2 ~ ~ lever[powered=true] run scoreboard players add $combo saffron_rails 4

# Place only when value changed (map 0..7 → your templates)
execute unless score $combo saffron_rails = $last saffron_rails as @e[tag=origin__saffron_rails,sort=nearest,limit=1] at @s if score $combo saffron_rails matches 0 run place template klawrz:crimson_room/saffron_rails_01
execute unless score $combo saffron_rails = $last saffron_rails as @e[tag=origin__saffron_rails,sort=nearest,limit=1] at @s if score $combo saffron_rails matches 7 run place template klawrz:crimson_room/saffron_rails_02
execute unless score $combo saffron_rails = $last saffron_rails as @e[tag=origin__saffron_rails,sort=nearest,limit=1] at @s if score $combo saffron_rails matches 5 run place template klawrz:crimson_room/saffron_rails_03
execute unless score $combo saffron_rails = $last saffron_rails as @e[tag=origin__saffron_rails,sort=nearest,limit=1] at @s if score $combo saffron_rails matches 1 run place template klawrz:crimson_room/saffron_rails_04
execute unless score $combo saffron_rails = $last saffron_rails as @e[tag=origin__saffron_rails,sort=nearest,limit=1] at @s if score $combo saffron_rails matches 3 run place template klawrz:crimson_room/saffron_rails_05
execute unless score $combo saffron_rails = $last saffron_rails as @e[tag=origin__saffron_rails,sort=nearest,limit=1] at @s if score $combo saffron_rails matches 2 run place template klawrz:crimson_room/saffron_rails_06
execute unless score $combo saffron_rails = $last saffron_rails as @e[tag=origin__saffron_rails,sort=nearest,limit=1] at @s if score $combo saffron_rails matches 6 run place template klawrz:crimson_room/saffron_rails_07
execute unless score $combo saffron_rails = $last saffron_rails as @e[tag=origin__saffron_rails,sort=nearest,limit=1] at @s if score $combo saffron_rails matches 4 run place template klawrz:crimson_room/saffron_rails_08

# Update the remembered value (only if we placed)
execute unless score $combo saffron_rails = $last saffron_rails run scoreboard players operation $last saffron_rails = $combo saffron_rails

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