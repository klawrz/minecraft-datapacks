# minecraft-datapacks
minecraft-datapacks

Updated for 1.21.8

This is an escape room puzzle inspired by "Crimson Room" from the early 2000s:
https://en.wikipedia.org/wiki/Escape_room_video_game



## Add datapack

To add the datapack to your world, follow these steps:

  - Creating a new world? 
    - Click the **More** tab > Datapacks > Click the **Open Pack Folder** button > Paste "klawrz-datapack" folder into the temporary folder that opens (mcworld-xxxxxxxx...)
    - Back in Minecraft, you should now see klawrz-datapack in the *Available* list on the left. Move it to the *Selected* list on the right by hovering over its image and clicking the triangle that appears > Click **Done**
    - Before you create your world, we recommend setting the game mode to Creative and **make sure commands are enabled**.

  - Have an existing world?
    - From the Single Player menu, select world > Click **Edit** > Click **Open world folder** > Open the **datapacks** folder > Paste "klawrz-datapack" folder
    - Back in Minecraft, enter this into the chat:
      ```
      /reload
      ```
    - If commands are disabled in your world, to enable them: from the pause menu select **Open to LAN** > Allow Commands **ON** > Start LAN world
    

## Prevent command blocks from clogging chat

Some aspects of this puzzle utilize command blocks for some reason. To ensure a more immersive experience, prevent command output in chat:

  - Paste this into your chat to disable command block output:
    ```
    /gamerule commandBlockOutput false
    ```

## Placing necessary structures
 
To add the necessary structures to your world, follow these steps:

***Note: The structures will spawn in invisible Marker entities that control the flow of the experience. If you place a structure wrong and need to delete it, see FAQ below for dealing with the markers. Placing a structure a second time will spawn the Markers again, and duplicate Markers will break the game***

- In your village, add the warp port to the Warp Hub
  - The structure is 7x7x10
  - Stand where you want the structure to spawn. The structure will generate 7 blocks east, 7 blocks up, and 10 blocks south
  - It will be annoying to move this after, so make sure you know where you want to place it. Avoid any tight squeezes or anything that requires perfect precision
  - Paste this command into the chat to load in the village warp port structure:
    ```
    /function klawrz:structure_placement/place_your_village
    ```

- Determine where you want to place the remaining structures
  - The structures are not pretty on the outside by any means. Place them far away from your builds, in a clear area like above an ocean or field, away from mountains
  - The structures will generate at Y=150, high in the sky
  - Paste this command into the chat to load in the remaining structures:
    ```
    /function klawrz:structure_placement/place_all
    ```

Note: You'll be teleported into the PVP Hub. Travel to the Warp Hub from there to get back to your village. Visit the Trials hub to try Crimson Room, and redeem any rewards at the Treasury

Have fun! Stay tuned for more challenges like the Crimson Room inspired escape room, and at some point we'll make the PVP Arena functional!

---
 
## Made a mistake? Have a question? See FAQ below

I placed the village port in the wrong place and need to move it

- If you really can't work around it, and absolutely must change the placement, you'll need to kill the markers that handle teleporting in and out
- Stand between the 2 sea lantern blocks and paste this into the chat to kill the markers:
  ```
  /execute as @e[type=marker, distance=..5] run kill @s
  ```
- Now you can place the structure again. Note that it does not rotate. Measure twice, cut once!

How do I add additional warps in the Warp Hub?

- To add any warp, you need to add two elements: a) The thing you step into to initiate the warp, and b) the port that receives you
- For the warp initiation:
  - Stand where you want the warp initiation to be
  - In the following command, replace `custom_location` with the name of your location (lowercase, underscores) and paste this into the chat 
    ```
    /summon marker ~ ~ ~ {Tags: ["to_custom_location", "warp_marker"]}
    ```
- For the receiving port:
  - Stand where you want to appear after warping
  - IMPORTANT: Rotate your character so that you are looking in the direction you want to appear in after the warp
  - In the following command, replace `custom_location` with whatever you used in the previous step
    ```
    /summon marker ~ ~ ~ {Tags: ["custom_location__port"]}
    ```
    (note the double underscore before `port`)
- Note: The markers need to be loaded in order to warp to them. Use `/forceload add ~ ~` near any warps or ports to ensure they are always warpable

- In the datapack folder, navigate to data > Klawrz > function > warps
  - Create a new file called `warp_custom_location.mcfunction`. Be sure to replace `custom_location` with whatever you used while summoning the markers
  - Open this file in a text editor like VS Code
  - Paste the following block of code in the file, and make sure to replace `custom_location` with what you used in the previous steps. There are 2 spots to change it, and you can also change the "Custom Location" text to whatever you want to appear on the screen

  ```
  # Set gamemode to Survival
  gamemode survival @s

  # Display titles
  title @s title "Custom Location"

  # Warp player to destination
  tp @s @e[tag=custom_location__port, limit=1]

  # Play warp sound
  execute at @e[tag=custom_location__port] run function klawrz:sfx/sfx_warp
  ```

- Open the file called handle_warps.mcfunction
  - At the bottom of this file, paste the following line of code, and be sure to replace `custom_location` with whatever you used in the filename after `warp_`:
  ```
  execute at @e[tag=to_custom_location] as @p[distance=..0.5] run function klawrz:warps/warp_custom_location
  ```

- Make sure both files are saved. Return to minecraft and reload with `/reload` and your warp should be functional
