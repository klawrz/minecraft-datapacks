# clear ephemeral gates
tag @s remove treasury_claimed_now
tag @s remove has_eligible_room

# --- mark eligible rooms (completed & not already redeemed) ---
execute unless entity @s[advancements={klawrz:treasury/crimson_room/redeemed_crimson_room=true}] if entity @s[scores={challenge.crimson_room.complete=1}] run tag @s add has_eligible_room
execute unless entity @s[advancements={klawrz:treasury/crimson_room/redeemed_cobalt_room=true}] if entity @s[scores={challenge.cobalt_room.complete=1}] run tag @s add has_eligible_room
execute unless entity @s[advancements={klawrz:treasury/crimson_room/redeemed_viridian_room=true}] if entity @s[scores={challenge.viridian_room.complete=1}] run tag @s add has_eligible_room
execute unless entity @s[advancements={klawrz:treasury/crimson_room/redeemed_saffron_room=true}] if entity @s[scores={challenge.saffron_room.complete=1}] run tag @s add has_eligible_room
execute unless entity @s[advancements={klawrz:treasury/crimson_room/redeemed_amethyst_room=true}] if entity @s[scores={challenge.amethyst_room.complete=1}] run tag @s add has_eligible_room

# --- TICKET-AWARE already-redeemed gate (only show the one you're holding) ---
# If no eligible rooms, but you're holding a matching ticket for a room you've already redeemed,
# say THAT one and exit immediately.

execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,CrimsonRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_crimson_room=true}] run tellraw @s [{"text":"You already redeemed your ","color":"gray"},{"text":"Crimson Room","color":"dark_red"},{"text":" reward.","color":"gray"}]
execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,CrimsonRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_crimson_room=true}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.6 0.6
execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,CrimsonRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_crimson_room=true}] run advancement revoke @s only klawrz:treasury/click_clerk
execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,CrimsonRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_crimson_room=true}] run return 0

execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,CobaltRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_cobalt_room=true}] run tellraw @s [{"text":"You already redeemed your ","color":"gray"},{"text":"Cobalt Room","color":"blue"},{"text":" reward.","color":"gray"}]
execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,CobaltRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_cobalt_room=true}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.6 0.6
execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,CobaltRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_cobalt_room=true}] run advancement revoke @s only klawrz:treasury/click_clerk
execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,CobaltRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_cobalt_room=true}] run return 0

execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,ViridianRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_viridian_room=true}] run tellraw @s [{"text":"You already redeemed your ","color":"gray"},{"text":"Viridian Room","color":"dark_green"},{"text":" reward.","color":"gray"}]
execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,ViridianRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_viridian_room=true}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.6 0.6
execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,ViridianRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_viridian_room=true}] run advancement revoke @s only klawrz:treasury/click_clerk
execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,ViridianRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_viridian_room=true}] run return 0

execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,SaffronRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_saffron_room=true}] run tellraw @s [{"text":"You already redeemed your ","color":"gray"},{"text":"Saffron Room","color":"yellow"},{"text":" reward.","color":"gray"}]
execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,SaffronRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_saffron_room=true}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.6 0.6
execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,SaffronRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_saffron_room=true}] run advancement revoke @s only klawrz:treasury/click_clerk
execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,SaffronRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_saffron_room=true}] run return 0

execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,AmethystRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_amethyst_room=true}] run tellraw @s [{"text":"You already redeemed your ","color":"gray"},{"text":"Amethyst Room","color":"light_purple"},{"text":" reward.","color":"gray"}]
execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,AmethystRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_amethyst_room=true}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.6 0.6
execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,AmethystRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_amethyst_room=true}] run advancement revoke @s only klawrz:treasury/click_clerk
execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b,AmethystRoomTicket:1b}}}]} if entity @s[advancements={klawrz:treasury/crimson_room/redeemed_amethyst_room=true}] run return 0


# --- if NO eligible rooms and no prior redemption: they must complete first (or have no tickets/completions) ---
execute unless entity @s[tag=has_eligible_room] if data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b}}}]} run tellraw @s [{"text":"You must complete the matching room before redeeming.","color":"gray"}]
execute unless entity @s[tag=has_eligible_room] unless data entity @s {Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{TreasuryTicket:1b}}}]} run tellraw @s [{"text":"No rewards available to redeem.","color":"gray"}]
execute unless entity @s[tag=has_eligible_room] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.6 0.6
execute unless entity @s[tag=has_eligible_room] run advancement revoke @s only klawrz:treasury/click_clerk
execute unless entity @s[tag=has_eligible_room] run return 0

# --- inventory guard AFTER eligibility (prevents overwriting items) ---
function klawrz:treasury/check_inventory_empty
execute if entity @s[tag=treasury_blocked] run tellraw @s [{"text":"Please empty your inventory (armor is fine). Hold only Treasury Tickets to redeem.","color":"gray"}]
execute if entity @s[tag=treasury_blocked] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.6 0.6
execute if entity @s[tag=treasury_blocked] run advancement revoke @s only klawrz:treasury/click_clerk
execute if entity @s[tag=treasury_blocked] run return 0

# --- redeem: ticket optional, completion required (one room per click) ---

# CRIMSON
execute unless entity @s[tag=treasury_claimed_now] unless entity @s[advancements={klawrz:treasury/crimson_room/redeemed_crimson_room=true}] if entity @s[scores={challenge.crimson_room.complete=1}] run function klawrz:treasury/crimson_room/redeem_crimson_room

# COBALT
execute unless entity @s[tag=treasury_claimed_now] unless entity @s[advancements={klawrz:treasury/crimson_room/redeemed_cobalt_room=true}] if entity @s[scores={challenge.cobalt_room.complete=1}] run function klawrz:treasury/crimson_room/redeem_cobalt_room

# VIRIDIAN
execute unless entity @s[tag=treasury_claimed_now] unless entity @s[advancements={klawrz:treasury/crimson_room/redeemed_viridian_room=true}] if entity @s[scores={challenge.viridian_room.complete=1}] run function klawrz:treasury/crimson_room/redeem_viridian_room

# SAFFRON
execute unless entity @s[tag=treasury_claimed_now] unless entity @s[advancements={klawrz:treasury/crimson_room/redeemed_saffron_room=true}] if entity @s[scores={challenge.saffron_room.complete=1}] run function klawrz:treasury/crimson_room/redeem_saffron_room

# AMETHYST
execute unless entity @s[tag=treasury_claimed_now] unless entity @s[advancements={klawrz:treasury/crimson_room/redeemed_amethyst_room=true}] if entity @s[scores={challenge.amethyst_room.complete=1}] run function klawrz:treasury/crimson_room/redeem_amethyst_room

# fallback (no path fired)
execute unless entity @s[tag=treasury_claimed_now] run tellraw @s [{"text":"No valid redemption found.","color":"gray"}]
advancement revoke @s only klawrz:treasury/click_clerk
