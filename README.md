# Lazer Tag Minecraft Minigame
If you don't know how to install a Data Pack in Minecraft check out [this guide](https://www.planetminecraft.com/blog/how-to-download-and-install-minecraft-data-packs/) and if you don't know how to install a Resource Pack check out [this guide](https://www.planetminecraft.com/blog/how-to-install-minecraft-texture-packs-4615399//) instead on PMC.
  
This is a Data Pack I made a while ago.  
  
I decided to finally publish it for you all to enjoy!  
  
So there's few things to tackle here before everything, first I'll leave a download for a premade map that is designed for a 3vs3 style of game (although bear in mind that was created for testing so is not the best map in the world), BUT you can create your own maps to enjoy with this Data Pack.  
  
For creating the maps I need first to tell you some things about the Setup process:  

1.  To start things out you need to use the  **/trigger setup**  command.
2.  Once done it you'll have different Armor Stands in your inventory, you'll have a  **Red Spawn**,  **Blue Spawn**,  **Flag** & **Flag Marker**,  **Powerup Generator**  and a  **Lobby**.
3.  So you obviously need to put the Red and Blue Spawns where you want the 2 teams to spawn.
4.  After that I suggest you to place the  **Flag Marker**  where you want you're flag to be, the  **Marker** needs to be placed facing south and will be the middle-lower block of a 3x3 area  *(sorry for it being so oddly specific)*.
5.  You can put the  **Flag**  in the center of the 3x3 area so that the Players know where to go to score points.
6.  After the  **Spawns**  and the  **Flag components**  is time to place the  **Powerups**  (this is not necessary for the Minigame to work but will add a layer of fun), know that even if you place more than 1  **Powerup Generator**  per Map, only 1  **Powerup**  will spawn at the time, so I suggest you to stick with just 1  **Generator**.
7.  Once you did all of this you can finally place the  Lobby, that's where the Players will be teleported once the Match is finished, so I suggest you to place it into a different structure or just outside the Arena.

This Data Pack is coded for a 4vs4 Match *(if you want to change this you need to go in the start.mcfunction file located in "Pingoda's Lazer Tag/data/lazertag/functions/start.mcfunction", change the number at the line 2 & 3 where it says "limit=4" with the number of Player per Team that you want)*, if you want to put specific Players in specific Teams just use **`/team join blue | red | spectator <Player>`**.  
  
All the Commands included in the Data Pack.  

-   **`/trigger setup`**: For getting the Items needed for the Setup process explained above.
-   **`/trigger start`**: For starting the Match.
-   **`/trigger end`**: For ending the Match before the score limit or the time runs out.

If any of this confuses you just leave a comment below and I'll try to answer you the best I can.  
  
You can find a video where I show the "making of" of the Data Pack here: [*VIDEO*](https://youtu.be/WVZhmvlqEbs) *(the video is in Italian)*
