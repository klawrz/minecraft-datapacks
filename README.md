# minecraft-datapacks

*Updated for 1.21.8*

*This datapack contains an escape room puzzle inspired by "Crimson Room" from the early 2000s:
https://en.wikipedia.org/wiki/Crimson_Room*

---

### v1.0.1 Release Notes:

Shoutout to yapsterb253 for identifying a few minor bugs while testing the datapack. Also added a note to the README to remind players that Peaceful difficulty will break the puzzle, so make sure to use Normal, Hard, or Hardcore!

---

### v1.0.0 Relase Notes:

Thanks for installing my datapack! The goal of this datapack is to provide players with a fun PVP environment, which includes a PVP Hub where players can gather and prepare for fights in the PVP Arena. To gear up, players can complete various intensely puzzling Trials and redeem rewards at the Treasury. 

... that being said, this first version contains only one puzzle (the Crimson Room escape room challenge). Though you can obtain some sweet rewards at the Treasury, and check out the PVP Hub (more content coming soon), the PVP Arena itself is not yet functional.

This also comes with a Warp Hub, which is intended to help you get around to your various builds or each other's bases quickly. The Warp Hub currently contains a warp to the PVP Hub, and a warp to "Your Village Warp Port" (a structure that you will place in your village). At the bottom of this README, you will find instructions for editing the datapack to add additional warps to your other builds

Have fun!

&ndash; Klawrz

---

**DISCLAIMER: If you are adding this to a cherished world, consider doing a test run in a backup or a throwaway world to ensure you know what to expect when loading in content. Having to start over is a pain, and you don't want to ruin your village by accidentally spawning giant bedrock cubes above it**

**DISCLAIMER 2: Some aspects of the puzzle will break if difficulty is set to Peaceful. Ensure difficulty is not set to Peaceful while attempting the challenge. Any other difficulty is valid**

## Step 1: Download Datapack

- [Click here to start the download](https://github.com/klawrz/minecraft-datapacks/releases/download/v1.0.1/klawrz-datapack-v1.0.1.zip)
- You should now have a folder called `klawrz-datapack-v1.0.0.zip` in your Downloads folder. Double click it to find the folder called `klawrz-datapack`
- Copy this folder to your clipboard, or prepare to drag and drop it to another folder

---

## Step 2: Add Datapack to Minecraft

To add the datapack to your world, follow the correct step depending on if your world file already exists or not:

  - If you are creating a new world and are still in the Create World screen (i.e the world has not yet been generated)
    - Click the **More** tab > Datapacks > Click the **Open Pack Folder** button
    - Paste or drag the `klawrz-datapack` folder into the temporary folder that opens (`mcworld-xxxxxxxx...`)
    - Back in Minecraft, you should now see klawrz-datapack in the *Available* list on the left. Move it to the *Selected* list on the right by hovering over its image and clicking the triangle that appears, then Click **Done**
    - Before you create your world, we recommend setting the game mode to Creative and **make sure commands are enabled**.

  - If you have an existing world (even if you just created it moments ago)
    - Return to the title screen in Minecraft
    - Click Single Player
    - Select your world (DON'T LAUNCH IT!) > Click **Edit** (bottom left) > Click **Open world folder** > Open the **datapacks** folder
    - Paste or drag the `klawrz-datapack` folder into the `datapacks` folder
    - Back in Minecraft, enter this into the chat:
      ```
      /reload
      ```
    - If commands are disabled in your world, to enable them: from the pause menu select **Open to LAN** > Allow Commands **ON** > Start LAN world
    
---

## Step 3: Prevent command blocks from clogging chat

Some aspects of this puzzle utilize command blocks for some reason. To ensure a more immersive experience, prevent command output in chat:

  - Paste this into your chat to disable command block output:
    ```
    /gamerule commandBlockOutput false
    ```
    
---

## Step 4: Placing necessary structures
 
To add the necessary structures to your world, follow these steps:

***Note: The structures will spawn invisible Marker entities that control the flow of the experience. If you place a structure wrong and need to delete it, see FAQ below for dealing with the markers. Placing a structure a second time will spawn the Markers again, and duplicate Markers will break the game. Avoid placing it in the wrong spot at all costs***

- In your village, add the warp port to the Warp Hub
  - This is a small structure that goes in your village, and acts as your waypoint to and from the Warp Hub
  - The structure is 7x7x10. ***The entrance to this structure faces West***.
  - Stand where you want the structure to spawn. The structure will generate 7 blocks east, 7 blocks up, and 10 blocks south with the entrance facing west
  - It will be annoying to move this after, so make sure you know where you want to place it. Avoid any tight squeezes or anything that requires perfect precision
  - Paste this command into the chat to load in the village warp port structure:
    ```
    /function klawrz:structure_placement/place_your_village
    ```
  - If you made a mistake that you really can't live with, see FAQ below for how to start over safely

- Determine where you want to place the remaining structures
  - The structures are not pretty on the outside by any means. Place them far away from your builds, in a clear area like above an ocean or field, away from mountains
  - The structures will generate at Y=150, high in the sky
  - Paste this command into the chat to load in the remaining structures:
    ```
    /function klawrz:structure_placement/place_all
    ```

  - Note: You'll be teleported into the PVP Hub. Travel to the Warp Hub from there to get back to your village. Visit the Trials hub to try Crimson Room, and redeem any rewards at the Treasury

### Have fun! Stay tuned for more trials to come, and at some point we'll make the PVP Arena functional!

---

---

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
- For the warp initiation (green sparkles that you step into to warp to a custom location):
  - Stand where you want the warp initiation to be
  - In the following command, replace `custom_location` with the name of your location (lowercase, underscores) and paste this into the chat 
    ```
    /summon marker ~ ~ ~ {Tags: ["to_custom_location", "warp_marker"]}
    ```
- For the receiving port (the destination of the warping action):
  - Stand where you want to appear after warping
  - IMPORTANT: Rotate your character so that you are looking in the direction you want to appear in after the warp
  - In the following command, replace `custom_location` with whatever you used in the previous step
    ```
    /summon marker ~ ~ ~ {Tags: ["custom_location__port"]}
    ```
    (note the double underscore before `port`)
- Note: The markers need to be loaded in order to warp to them. Use `/forceload add ~ ~` near any warps or ports to ensure they are always warpable

- To get back to the Warp Hub from your custom location:
  - Stand where you want to warp from and paste this into the chat:
    ```
    /summon marker ~ ~ ~ {Tags: ["to_warp_hub", "warp_marker"]}
    ```
  - This will give you a warp back to the Warp Hub where you can access your village and the PVP Hub and any other custom warps you add

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
