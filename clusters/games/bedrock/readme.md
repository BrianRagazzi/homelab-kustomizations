# Notes



## Import World
You can use an existing world for the server by placing the world save folder in the server directory's worlds folder. You should ensure your world is compatible with the current version of the server software.

Stop the server, if necessary.
Export, copy, or obtain the preferred world save folder.
Place the world save folder in the worlds folder located in the server directory.
Set the value of level-name in server.properties equal to the world's name.
Note: The values of the world name (defined in levelname.txt of the world save folder), the world save folder, and level-name in server.properties must all be equal.
Note: The "Visible to LAN Players" toggle must have previously been enabled. You can toggle this setting in-game before copying or exporting the world. Alternatively, you can set the value of LANBroadcast to 1 in level.dat using an NBT editor.
Start the server.


##Addons:
Apply Add-Ons
You can use resource and behavior pack add-ons on your server by applying them directly to your world. You should ensure all add-ons are compatible with the current version of the server software.

Apply the resource and behavior pack add-on(s) to your world in-game.
Note: Applying the add-ons in-game ensures the packs are installed to the appropriate locations and auto-generates world_resource_packs.json and world_behavior_packs.json files.
Note: You may also manually place the resource and behavior pack folders in the appropriate resource_packs or behavior_packs folder, but you will need to manually create and format the world_resource_packs.json and world_behavior_packs.json files.
Export the world or copy the world save folder.
Place the world save folder in the worlds folder located in the server directory.


#Pre- and post-backup commands:
save hold
save resume
