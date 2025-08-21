# Any warp that uses a trapdoor gate system should reset the gates after the player has travelled through
execute if block ~1 ~ ~ mangrove_trapdoor[open=false] run setblock ~1 ~ ~ mangrove_trapdoor[open=true, facing=east]
execute if block ~ ~ ~1 mangrove_trapdoor[open=false] run setblock ~ ~ ~1 mangrove_trapdoor[open=true, facing=south]
execute if block ~-1 ~ ~ mangrove_trapdoor[open=false] run setblock ~-1 ~ ~ mangrove_trapdoor[open=true, facing=west]
execute if block ~ ~ ~-1 mangrove_trapdoor[open=false] run setblock ~ ~ ~-1 mangrove_trapdoor[open=true, facing=north]