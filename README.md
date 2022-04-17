# Black Box Library
A collection of Minecraft utility functions and resources to assist in map-making as well as power mechanic based datapacks.
Currently 1.18+

Credits:

RockNRed: Compilation and all otherwise uncredited resources.

PearUhDox: Entity and block tags, crit checker, and further ideas.

14er: RNG function.

NickNackGus: Relco and minusxp utilities.

`/function bb:sys/credits`

# Purpose

This datapack is designed to be a closed system which provides common utilities for mapmakers to avoid a bunch of simple work like clocks and tag functions. Also provided are tools to both make development easier as well as save time writing them yourself.

# Installation & Note

Drag & drop the datapack into your world's datapacks folder and `/reload` or `/datapack enable "file/Black Box Library"`.

To uninstall the datapack, run `/function bb:sys/uninstall` and delete the datapack from your world's datapacks folder.
Then `/reload` and the uninstallation is complete. Make sure you do not run this command before the datapack is gone, else the system will simply re-install itself!

Important note: This datapack forceloads a chunk at (`/tp @s 4206862 1 4206872 90 0`) to store the shulker box used for the "shulker box trick." Be careful not to unload this.


# BBL Feature List:

### **Tag Functions:**

(Tag functions ran when certain actions occur.)

`#minecraft:bbl/clock/X_Y/global, #minecraft:bbl/clock/X_Y/as_player` - Clock functions ran every X Ys. Supported values are: `1_tick, 5_ticks, 1_second, 2_seconds, 5_seconds, 10_seconds`. Global variant is ran as the server every clock cycle, whereas as_player is ran as/at every online player per clock cycle.

`#minecraft:bbl/inventory_changed, #minecraft:bbl/slot_changed, #minecraft:bbl/inventory_or_slot_changed` - Run as/at a player when their inventory changes, hotbar selected slot changes, or when either happens. 

`#minecraft:bbl/y_change/falling, #minecraft:bbl/y_change/ascending` - Run as/at a player every tick as they fall or ascend.

`#minecraft:bbl/y_change/down_1, #minecraft:bbl/y_change/up_1` - Run as/at a player when they lose or gain a y level.

`#minecraft:bbl/gamemode_changed/X` Where X can be `survival, creative, adventure, or spectator`. The gamemode they swiitched from is also saved in the scoreboard `bbl.gamemode_change.old_gamemode`

### **Passive Player Tags:**

(Tags applied to a player in the right contexts.)

`can_crit` - Player has while they can crit, accounts for things like standing next to honey.



### **Functions:**

(Utility and tool functions for various tasks.)

`bb:lib/void_kill` - Puts an entity in the void and kills them.

`bb:lib/get_target_status/get_missing_health` - Returns the target's missing health from their max health in $target_missing_health bbl.storage

`bb:lib/get_target_status/get_percentage_health` - Returns the target's percentage health remaining in $percentage_health_remaining bbl.storage

`bb:lib/minuslevels/main` - Removes X levels WORTH of xp from the player. This should be ran as the desired player, with the desired levels set by `/scoreboard players set $minuslevel bbl.xp X` (Replace X) in the same function, a line prior.

`bb:lib/rng` - Returns a random number between two values, set by `scoreboard players set $rng_min bbl.rng 1` for the min value and `scoreboard players set $rng_max bbl.rng 3` for the max value.

`bb:lib/drop/checked/X` - Drops a slot from the players inventory. X is the ID of the slot you wish to drop, also supports `mainhand`.

`relco:` - A system to get the relative cordinates between two points. Run `/function relco:help` in-game for more information.



### **Entity/Block Tags:**

(Groups of Mobs & Blocks for detection.)

(All prefixed by #bb:)

Mobs: `arrow, arthropod, explosive, fiery, friendly, hostile, humanoid, monstrous, npc, projectile, undead, nether, end`

Blocks: `can_raycast, containers, glass, no_crit`



### **Loot Tables:**

(Some overwritten vanilla loot tables for various tasks.)

Black, light gray, and purple shulker box loot tables have been overwritten to where you can break one with air{drop_contents:1b} to drop its contents, for use in the "shulker box trick."



### **Predicates:**

(Generic predicates.)

(All prefixed by `bb:`)

`is_sneaking` - True while the player is crouching

`is_sprinting` - True while the player is sprinting



### **Constants**

(For scoreboard operations.)

(All of these scores are fake players in the bbl.constant scoreboard, with their respective values.)

`$-1, $-1, $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $15, $20, $25, $30, $33, $35, $50, $67, $68, $70, $75, $80, $90, $100,  $115, $200, $300, $600, $1000, $1200`


### **Miscellaneous**

(Uncategorized.)

Every player is assigned a unique ID number in the scoreboard `bbl.id`. You can run `/function bb:lib/player_id/query` to learn yours and the next one to be assigned.