execute as @e[tag=saffron_rails_marker] at @s run tp @e[tag=saffron_cart] ~2 ~ ~-2
execute at @e[tag=saffron_rails_marker] run fill ~ ~ ~ ~2 ~ ~ lever[facing=south]
scoreboard players set $last saffron_rails -1