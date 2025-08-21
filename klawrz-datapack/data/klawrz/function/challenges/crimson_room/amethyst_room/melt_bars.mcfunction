# Prevent function from firing again
tag @s add melted

# Failsafe to prevent duplicate calls by killing additional amethyst potions if they exist for any reason
kill @e[type=splash_potion, nbt={Item: {components: {"minecraft:custom_data":{AmethystPotion:1b}}}}] 

# Destroy the bars
setblock ~ ~ ~ air

# SFX
playsound minecraft:block.lava.extinguish master @a[distance=..16] ~ ~ ~ 0.9 1.6
playsound minecraft:block.chain.break master @a[distance=..16] ~ ~ ~ 0.7 0.9

# Particles
particle minecraft:dust{color:[0.12,0.85,0.25],scale:1.1} ~ ~1 ~ 0.9 1.2 0.9 0 120 force
particle minecraft:dust_color_transition{from_color:[0.12,0.85,0.25],to_color:[0.00,0.90,0.40],scale:1.1} ~ ~1 ~ 0.9 1.2 0.9 0 120 force
particle minecraft:poof ~ ~1 ~ 0.5 0.7 0.5 0.02 25 force