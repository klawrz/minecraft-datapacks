# minecraft-datapacks
minecraft-datapacks

This is an escape room puzzle inspired by "Crimson Room" from the early 2000s:
https://en.wikipedia.org/wiki/Escape_room_video_game

THESE ARE TEMPORARY STEPS WHILE I FIGURE OUT HOW TO LOAD THIS UP AFTER NOT THINKING ABOUT IT FOR 7 MONTHS

To prepare your game to handle the puzzle, follow these steps:

- Add datapack
  - Select world > Edit > Open world folder > datapacks > Paste "klawrz-datapack" folder
    
- Add structure files
  - Select world > Edit > Open world folder > Paste "generated" folder
    
- Add scoreboard file
  - Select world > Edit > Open world folder > data > Paste "scoreboard.dat" file
 
To load the puzzle into your game, follow these steps:

- Determine where you want to place the puzzle
  - Place the crimson room origin structure
 
- Determine where you want the warp station to be for warping in and out of the trial
  - Place the warp zone origin structure
 
- Prevent command output in chat
  - run command: /gamerule commandBlockOutput false

TODO:

- Amethyst Room
  - Swap Allay item to Portal Stabilizer
  - Cryptex
    - Should all start in upward position
    - First click of each button should move that arrow clockwise (displaying Right arrow) or counterclockwise (Left arrow)
  - Memory
    - Decrease volume of 'lose' sfx
  - Potion/Rod
    - 2 end rods dropped
    - rod was a little hard to break
  - Portal
    - Check that portal clues make sense (I think the 4th one is accidentally in position 3)
    - Portal SFX
    - some kind of glow/pulsing effect too?

- Complete puzzle from crimson room onwards + save each new room as you access it
- Make sure the puzzle flows correctly all the way through
- Finish the exit portal
- Sort out rewards system (treasury structure that spawns chest when it gets reward tickets)
- Separate Mines of Moria map stuff from datapack file
- Update datapack to only contain escape room content
- Make a structure that contains the warp stand
