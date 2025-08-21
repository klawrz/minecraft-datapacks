# Start particles
function klawrz:particles/exit_portal_particle

# SFX
execute as @s[tag=!done_portal_sfx] run function klawrz:sfx/sfx_exit_portal



# clear inside tag
tag @a remove exit_portal_in

# tag players inside radius
execute as @a[tag=!exit_portal_cd] at @s if entity @e[tag=exit_portal_marker,distance=..1.6,limit=1] run tag @s add exit_portal_in

# charge while inside (no scores filter, so it initializes)
scoreboard players add @a[tag=exit_portal_in] portal_charge 1

# cap charge so it doesn't grow forever
scoreboard players set @a[scores={portal_charge=120..}] portal_charge 120

# cancel if they leave
scoreboard players set @a[tag=!exit_portal_in,scores={portal_charge=1..}] portal_charge 0

# wavy screen (client must have Distortion Effects > 0)
effect give @a[tag=exit_portal_in] minecraft:nausea 3 0 true

# tick ambient counter
scoreboard players add @a[tag=exit_portal_in] portal_sound 1

# reset ambient counter out of portal
scoreboard players set @a[tag=!exit_portal_in,scores={portal_sound=1..}] portal_sound 0

# play ambient every 40t, quiet, on self only
execute as @a[tag=exit_portal_in,scores={portal_sound=40..}] at @s run playsound minecraft:block.portal.ambient master @s ~ ~ ~ 0.3 1.0

# restart ambient counter
scoreboard players set @a[tag=exit_portal_in,scores={portal_sound=40..}] portal_sound 0

# portal particles
execute as @a[tag=exit_portal_in] at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.7 1.8 0.7 0 8 force

# warp flash
execute as @a[tag=exit_portal_in,scores={portal_charge=60..}] at @s run particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 force

# run your exit function
execute as @a[tag=exit_portal_in,scores={portal_charge=60..}] at @s run function klawrz:challenges/exit_warp

# start cooldown
tag @a[tag=exit_portal_in,scores={portal_charge=60..}] add exit_portal_cd

# set cooldown ticks
scoreboard players set @a[tag=exit_portal_in,scores={portal_charge=60..}] portal_cd 40

# reset charge
scoreboard players set @a[tag=exit_portal_in,scores={portal_charge=60..}] portal_charge 0

# clear inside tag
tag @a[tag=exit_portal_in,scores={portal_charge=60..}] remove exit_portal_in

# cooldown countdown
scoreboard players remove @a[tag=exit_portal_cd,scores={portal_cd=1..}] portal_cd 1

# clear cooldown
tag @a[tag=exit_portal_cd,scores={portal_cd=0}] remove exit_portal_cd



# Visual feedback
# say @p[scores={challenge.crimson_room.init=1}] "Portal open"


#
# # End rod / portal stablizer templates
#

# Rod 1
# Viridian Room reward chest
# ItemRotation: 
# end_rod{SaffronKey: 1b, Key1: 1b, CrimsonRoomNeedsReset:1b, display: {Name:'{"text":"Portal Stabilizer","color":"light_purple"}', Lore:['{"text":"Now, what could this be for?", "color":"dark_gray"}']}}

# Rod 2
# Saffron Room reward chest
# ItemRotation: 
# end_rod{SaffronKey: 1b, Key2: 1b, CrimsonRoomNeedsReset:1b, display: {Name:'{"text":"Portal Stabilizer","color":"light_purple"}', Lore:['{"text":"Some kinda extra-dimensional object", "color":"dark_gray"}']}}

# Rod 3
# Held by Allay in Amethyst Room
# ItemRotation:
# end_rod{SaffronKey: 1b, Key3: 1b, CrimsonRoomNeedsReset:1b, display: {Name:'{"text":"Portal Stabilizer","color":"light_purple"}', Lore:['{"text":"Looks like it could stabilize","color":"dark_gray"}', '{"text":"a portal or something","color":"dark_gray"}']}}

# Rod 4
# Held by item frame in Amethyst Room basement
# ItemRotation
# end_rod{SaffronKey: 1b, Key4:1b, CrimsonRoomNeedsReset: 1b, display: {Name: '{"text":"Portal Stabilizer","color":"light_purple"}', Lore: ['{"text":"Do you know what this is for?", "color":"dark_gray"}', '{"text":"I do. Do you? Maybe not...", "color":"dark_gray"}']}}