# Prevent function from firing until button is released
tag @s add button_03_powered

# Place 1st config
execute if score #amethyst_cryptex_03 challenge.amethyst_cryptex matches 0 run place template minecraft:amethyst_cryptex_01 ~2 ~ ~

# Place 2nd config
execute if score #amethyst_cryptex_03 challenge.amethyst_cryptex matches 1 run place template minecraft:amethyst_cryptex_02 ~2 ~ ~

# Place 3rd config
execute if score #amethyst_cryptex_03 challenge.amethyst_cryptex matches 2 run place template minecraft:amethyst_cryptex_03 ~2 ~ ~

# Place 4th config
execute if score #amethyst_cryptex_03 challenge.amethyst_cryptex matches 3 run place template minecraft:amethyst_cryptex_04 ~2 ~ ~

# Play piston sound
function klawrz:sfx/sfx_piston

# Increment score
scoreboard players add #amethyst_cryptex_03 challenge.amethyst_cryptex 1

# Reset score 
execute if score #amethyst_cryptex_03 challenge.amethyst_cryptex matches 4 run scoreboard players set #amethyst_cryptex_03 challenge.amethyst_cryptex 0