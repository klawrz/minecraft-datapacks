# Mark amethyst room completed
scoreboard players set @s challenge.amethyst_room.complete 1

# Give player reward ticket
give @s minecraft:paper[minecraft:custom_name={"text":"Amethyst Room Treasury Ticket","color":"light_purple","italic":false},minecraft:lore=[{"text":"Redeem at the Treasury.","color":"gray","italic":false}],minecraft:custom_data={AmethystRoomTicket:1b,TreasuryTicket:1b}] 1

# Amethyst Room reward
# Totem of undying, unlock coloured arena suit, ancient debris, amethyst, mycelium, enchanted book, potion, music disc: mall, glazed terracotta