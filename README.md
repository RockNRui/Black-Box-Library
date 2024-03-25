# Black Box Library
A collection of Minecraft utility functions and resources to assist in map-making as well as power mechanic based datapacks.
Currently 23w51b+

Credits:

RockNRed: Compilation and all otherwise uncredited resources.

PearUhDox: Entity and block tags, HPM systems, and further ideas.

NickNackGus: Relco and minusxp utilities.

McTsts: Inventory saving and loading utility. (For more info, see: https://github.com/McTsts/inv-manipulation)

gibbs: True player damage system. Aditional shoutouts for untold hours of debugging/command help.

Asdru: Crit checker predicate.

14er: (Following credit retiring in 1.21) RNG function.

Suso: Original player data storage concept, remade significantly simpler in 1.20.2 tech additions.

`/function bb:sys/credits`

# Purpose

This datapack is designed to be a closed, TPS-optimized system which provides common utilities for mapmakers to avoid a bunch of simple work. This adds things like clocks, tag functions, and other utilities and tools to both make development easier as well as to save time having to write them yourself for every project.

# Installation & Note

Drag & drop the datapack into your world's datapacks folder and `/reload` or `/datapack enable "file/Black Box Library"`.

To uninstall the datapack, run `/function bb:sys/uninstall` and delete the datapack from your world's datapacks folder.
Then `/reload` and the uninstallation is complete. Make sure you do not run this command before the datapack is gone, else the system will simply re-install itself!

Important note: This datapack forceloads a chunk at (`/tp @s 4206862 1 4206872 90 0`) to store the shulker box used for the "shulker box trick," as well as other systems that require exact coordinates. Be careful not to unload this. (The datapack will force load it on `/reload`)


# BBL Feature List:

### **Tag Functions:**

(Tag functions ran when certain actions occur.)

`#minecraft:bbl/clock/X_Y/global, #minecraft:bbl/clock/X_Y/as_player` - Clock functions ran every X Ys. Supported values are: `1_tick, 5_ticks, 1_second, 2_seconds, 5_seconds, 10_seconds`. Global variant is ran as the server every clock cycle, whereas as_player is ran as/at every online player per clock cycle.

`#minecraft:bbl/inventory_changed, #minecraft:bbl/slot_changed, #minecraft:bbl/inventory_or_slot_changed` - Run as/at a player when their inventory changes, hotbar selected slot changes, or when either happens. (Note: The player's inventory is saved into `bbl:pldata sudo_root.working_data.bbl.inventory.current_tick` and `bbl:pldata sudo_root.working_data.bbl.inventory.past_tick` before inventory change tag functions run.)

`#minecraft:bbl/y_change/falling, #minecraft:bbl/y_change/ascending` - Run as/at a player every tick as they fall or ascend.

`#minecraft:bbl/y_change/down_1, #minecraft:bbl/y_change/up_1` - Run as/at a player when they lose or gain a y level.

`#minecraft:bbl/gamemode_changed/X` Where X can be `survival, creative, adventure, or spectator`. The gamemode they swiitched from is also saved in the scoreboard `bbl.gamemode_change.old_gamemode`

`#minecraft:bbl/relog` - Run as/at a player when they rejoin a world in both single and multiplayer.

`#minecraft:bbl/init/repeated, #minecraft:bbl/init/single` - Run as/at a player when they first join, relog or the world reloads OR run only for a player's first entry into a world, respectively.

`#minecraft:bbl/move/any` - Run as/at a player when they do any of the following movement: climbing, sneaking, moving a horse, sprinting, swimming, walking and walking underwater

`#minecraft:bbl/move/mouse` - Run at/at a player when they move their mouse. Note: Requires the player to have at least 1 in the score `bbl.move.mouse_angle.listen.`, for optimization reasons. When using, please ADD or REMOVE, never "set" as this could interfere with other things using this system.

`#minecraft:bbl/move/generic` - Run as/at a player when they do any movement or mouse movement, but only once and after it has been "primed" on them with the function `bb:lib/move_detector/generic_listen`

Player Actions:

`#minecraft:bbl/action/drop/any` - Run as/at a player when they drop anything.

`#minecraft:bbl/action/drop/kb` - Run as/at a player when they drop a knowledge book.

`#minecraft:bbl/action/place/barrel` Run as/at a player when they place a barrel.

`#minecraft:bbl/action/place/spruce_stair` Run as/at a player when they place a spruce stair.

`#minecraft:bbl/action/kill` - Run as/at a player when they kill anything.

`#minecraft:bbl/action/shot/bow` - Run as/at a player when they shoot a bow.

`#minecraft:bbl/action/shot/crossbow` - Run as/at a player when they shoot a crossbow.

`#minecraft:bbl/action/die/on_spawn` - Run as/at a player when they respawn from a death.

`#minecraft:bbl/action/die/on_death` - Run as/at a player when they die.

`#minecraft:bbl/action/jump` - Run as/at a player when they jump.

`#minecraft:bbl/action/take_damage` - Run as/at a player when they take damage.

`#minecraft:bbl/action/use/totem` - Run as/at a player when they use a totem of undying.

`#minecraft:bbl/action/use/bundle` - Run as/at a player when they use a bundle.

`#minecraft:bbl/action/use/coas` - Run as/at a player when they use a carrot on a stick.


Utilities:

`#minecraft:bbl/hard_reset_map` - Ran globally, meant to be used in collab projects for an easy centralized reset function. This should be safe to spam!

`#minecraft:bbl/soft_reset_50b` - Reset things in a small area, it is up to the mapper to apply distance limitations! This is meant to be used in collab projects for an easy local reset function. This should be safe to spam!

`#minecraft:bbl/prime_map_for_release` - Ran globally to "prime" the map for release. This should be safe to spam!



### **Passive Player Tags:**

(Tags applied to a player in the right contexts.)

`bbl.in_danger` - Applied when the player is in any danger.
`bbl.in_danger.in_void` - Applied when the player is below y=-64.
`bbl.in_danger.in_damage_block` - Applied when the player is in a damaging block like lava, sweet berry bushes, fire, campfires, etc.
`bbl.in_danger.falling` - Applied when the player is falling downwards (Note: Upwards motion is ignored.)
`bbl.in_danger.drowning` - Applied when the player has less then max breath.
`bbl.in_danger.taking_dot` - Applied when the player is burning, freezing, poisoned, or withered.
`bbl.in_danger.targeted_by_mob` - Applied when a hostile mob is targeting the player.



### **Functions:**

(Utility and tool functions for various tasks.)

`bb:lib/void_kill` - Puts an entity in the void and kills them.

`bb:lib/get_target_status/get_missing_health` - Returns the target's missing health from their max health in $target_missing_health bbl.storage

`bb:lib/get_target_status/get_percentage_health` - Returns the target's percentage health remaining in $percentage_health_remaining bbl.storage

`bb:lib/minuslevels/main` - Removes X levels WORTH of xp from the player. This should be ran as the desired player, with the desired levels set by `/scoreboard players set $minuslevel bbl.xp X` (Replace X) in the same function, a line prior.

`bb:lib/rng` - Returns a random number between two values, set by `scoreboard players set $rng_min bbl.rng X` for the min value and `scoreboard players set $rng_max bbl.rng Y` for the max value.

`bb:lib/drop/checked/X` - Drops a slot from the players inventory. X is the ID of the slot you wish to drop, also supports `mainhand`.

`bb:lib/chat_spam` - Run to clear chat with blank lines.

`bb:lib/query_light_level` - Return the light at itself in `$light_level bbl.storage`.

`bb:lib/hide_feedback` - Run in chat menus when a player clicks a button to temporarily disable the sendCommandFeedback gamerule to prevent spamming chat with feedback. Doesn't turn the gamerule on if it is off.

`bb:lib/set_display_light_from_block` - Sets the light level of a block, text, or item display to the light level of the block it's in.

`bb:lib/vanilla_item_clear/example` - A system that can be used to clear "vanilla" (lacking `tag:{}` nbt) versions of items. See this function for an example of how to call the system. (Note: Incompatible with items that have durability.)

`bb:lib/vanilla_item_replace/example` - A system that can be used to replace "vanilla" (lacking `tag:{}` nbt) versions of items with a specified item. See this function for an example of how to call the system. (Note: This system has much less features then its clearing counterpart, as its sole intentional use is to replace knowledge books for custom crafting mechanics.) (Note: Incompatible with items that have durability.)

`bb:lib/no_iframes` - Cancels i-frames on an entity. Use after applying a different source of damage.

`bb:call/hpm/player/heal, bb:call/hpm/player/damage/true, bb:call/hpm/mob/heal and bb:call/hpm/mob/damage/true` - A set of 4 functions to deal true damage or healing to players or mobs. Requires the entity's score in `bbl.damage_queue` or `bbl.heal_queue` to be set to the desired damage or healing.

`bb:lib/danger_check/query` - Queries if the player is in danger (with the asociated `bbl.in_danger` tags above) and gives the player a generic error message if they are found to be in danger.

`bb:lib/move_detector/generic_listen` - After 12 ticks starts listening for any player movement or mouse movement, and when found triggers the tag function `#minecraft:bbl/move/generic` once.

`bb:lib/pldata/read` - Reads a data storage unique to the player into `bbl:pldata sudo_root.working_data`.

`bb:lib/pldata/write` - Writes data from `bbl:pldata sudo_root.working_data` into a data storage unique to the player. (Note: Always read before making any changes to the working data, or writing at all. Other systems use this, it's not just for your data!) (An example of where to write to it: `sudo_root.working_data.my_example_field` Just try and use something unique to you, e.g. `sudo_root.working_data.spellsnbells.count`)

`bb:lib/concat/start` - Concats (Aka, makes an array into one string) the array in `bbl:concat sudo_root.array` into the string `bbl:concat sudo_root.string`

`bb:lib/hard_reset_map` - Runs the corresponding tag function. This should be safe to spam!

`bb:lib/soft_reset_50b` - Runs the corresponding tag function. Meant to only reset things in a small 50 block area, it is up to the mapper to apply such distance limitations. This should be safe to spam!

`bb:lib/prime_map_for_release` - Runs the corresponding tag function. This should be safe to spam!

`bb:lib/tp_to_xyz/get_xyz` - Stores position information in the storage and scoreboards `bbl:tp sudo_root.full`, `bbl:tp sudo_root.[x, y , or z],` and `bbl.tp_xyz.[x, y, or z]`

`bb:lib/tp_to_xyz/call/storage, bb:lib/tp_to_xyz/call/storage_seperate and bb:lib/tp_to_xyz/call/score` - Tps the entity to the cordinates stored in the respective previously mentioned variables.


`relco:` - A system to get the relative cordinates between two points. Run `/function relco:help` in-game for more information.

`inv:save` & `inv:load` - A system to save and load the player's inventory to and from a storage space. (For more info, see: https://github.com/McTsts/inv-manipulation)



### **Entity/Block/Item Tags:**

(Groups of Mobs & Blocks for detection.)

(All prefixed by #bb:)

Mobs: `arrow, arthropod, explosive, fiery, friendly, hostile, humanoid, monstrous, npc, projectile, undead, nether, end`

Blocks: `can_raycast, containers, glass, no_crit, no_collision, no_break`

Items: `dyes`

### **Loot Tables:**

(Some overwritten vanilla loot tables for various tasks.)

Black, light gray, and purple shulker box loot tables have been overwritten to where you can break one with `air{drop_contents:1b}` to drop its contents, for use in the "shulker box trick."



### **Predicates:**

(Generic predicates.)

(All prefixed by `bb:`)

`is_sneaking` - True while the player is crouching

`is_sprinting` - True while the player is sprinting

`can_crit` - True while the player can critcally attack.

`has_health_boost` - True while the player has the health boost effect.

`has_absorption` - True while the player has the absorption effect.

`water/either` - True while the player is in any state of water. (`normal`/`flowing` are also options, but `either` is probably better to use!)


### **Item Modifiers:**

(Tools for basic actions using item modifiers.)

(All prefixed by bb:)

`repair` - Removes the damage of an item.

`deduct` - Removes 1 item from a stack.

`load` - Loads a crossbow with a normal arrow.


### **Constants**

(For scoreboard operations.)

(All of these scores are fake players in the bbl.constant scoreboard, with their respective values.)

`$-1, $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $15, $20, $25, $30, $33, $35, $50, $67, $68, $70, $75, $80, $90, $100,  $115, $200, $300, $600, $1000, $1200`



### **Miscellaneous**

(Uncategorized.)

`/function bb:lib/no_iframes` Will remove iframes from an entity.

`bbl:pldata sudo_root.working_data.bbl.name` - Has the player's name in string format.

Every player is assigned a unique ID number in the scoreboard `bbl.id`. You can run `/function bb:lib/player_id/query` to learn yours and the next one to be assigned.



### **Other Doccumentation**

(Information for advanced use.)

**Lexica Model**

If the Datapack Cartographer (https://github.com/pearuhdox/Cartographer)

and the datapack(s): (any of)

- RIM (N/A, w.i.p.)
- Inasa (N/A, w.i.p.)

are installed, BBL will inject the the Lexica Cartographia with `CustomModelData:2` and remove enchants. This is to enable the Lexica model with the resourcepack for my more feature-focussed datapacks.

Set the score in the scoreboard `$bbl.config.lexica_inject bbl.storage` to 0 to disable and use a vanilla knowledge book texture (`CustomModelData:1`), else defaults to enabled score of 1.

**Resourcepack**

THIS RESOURCEPACK IS NOT PART OF BBL'S FEATURES, AND IS NOT REQUIRED TO USE IT. You do not need to worry about having this unless you are using one of my other datapacks which states parts of it are required.

This resourcepack is my resource and assets equivlent of BBL- where BBL is my place to compile all my function and other datapack facets, this resourcepack is a combined pool of all my resources and assets for my various datapacks.

I do my best not to infringe on anything vanilla beyond objective improvements, but a few things must be unavoidably touched.

*Below is a list of all the resourcepack modifies about the vanilla assets:*

Models: - Knowledge books are rextured to a question mark and renamed to "Unknown Item (Craft to reveal, result of Minecraft limitation.)". This, as you can probably tell, is to make custom crafting a bit smoother to the player. 

Use `CustomModelData:1` on a knowledge book to use the vanilla texture.

Atlases: - Atlas for `blocks` compiled/used for custom textures; this can be easily overwritten with a script that auto-generates this atlas (Like I use.) to include both my resources and whatever need be added/changed. Maybe I'll look into a custom atlas someday, but I don't really care for the moment.

Models: - Custom models with model data overrides for the following items: `barrel`, `carrot_on_a_stick`, `clock`, `item_frame` and `knowledge_book`

Lang: - Enchantment levels 1-30 are properly given roman numerals.

*Below is a list of all the resourcepack adds for my various datapacks:*

- Assets for INASA (N/A, w.i.p.)

 - Dev tools
 - Placeholder blocks
 - Monument objectives
 
- Assets for RIM (N/A, w.i.p.)

- Assets for Cartographer (https://github.com/pearuhdox/Cartographer)

 - Lexica Cartographia



### **Changelogs**

```
V1.6 Changelog

+ Updated to (1.21? 1.20.5?, latest-) snapshots for Conjuring Brings Trouble. Will update to the next major version when it's out; at the time of writing it's 23w51b.


<-> Reformatted the pre-existing "action" tag functions dropped_kb -> drop/kb, placed_spruce_stair -> place/spruce_stair, placed_barrel -> place/barrel, mined_lapis -> mine/lapis.

<+> Raycast block tag has been split into `can_raycast` and `no_collision`, where `can_raycast` maintains its old functionality and `no_collision` contains all blocks a player could never be suspended in.

+ Added drop/any, mine/spawner, kill, shot/bow, shot/crossbow, die/on_spawn, die/on_death, jump, take_damage, use/totem, use/bundle and use/coas "action" tag functions.

+ Added 'load crossbow' item modifier.

+ Added a predicate for being in water.

+ Added a block tag 'no_break' for stuff you generally don't want effects breaking like spawners, contianers, signs, bedrock and etc.

+ Added a system for retrieving player xyz into several storage values.

+ Added a system for returning a player to a stored xyz.

Further documentation on github.
```

```
V1.5 Changelog

+ 1.20.2 update.

+ Added a resourcepack- kind of. This isn't actually a part of BBL, and is NOT required to use for BBL. This is rather a combined pool of resources for all my datapacks that will make use of it, like the upcomming R.I.M.
I have done my best to have this edit as little as possible with vanilla, but knowledge books had to be replaced (Hence the Lexica model) to facilitate some explanation in custom crafting. (Mojang still refuses to give us NBT in custom recipes!)
For more doccumentation on the resourcepack and what it does, see the "Other Doccumentation" section near the bottom of the github page. 

+ Added a system to concat an array into a string.

+ Added a system for storing data unique to each player.

+ Added a system to detect player movement and trigger corresponding tag functions, as well as optionally "listen" for mouse movement. (Must be toggled on and off as needed as this could be tps intensive if left on.)

+ Added 3 new functions/tag commands for centralized map resetting & priming.

+ Added tag functions for relogging and player intitialization (in both repeated and singular forms.)

+ Added Ts to the in-game credits command (whoops.)

+ Added a set of function tags that happen upon certain "actions." These are mostly simple scoreboard outputs.

+ Added some integration with Cartographer for a Lexica Cartographia model.

<-> Updated credits and its formatting.

<-> I LOVE FORMATTING FIXES I LOVE FORMATTING FIXES.

- Cleaned up some redundant code.

Further documentation on github.
```

```
V1.4 Changelog

+ 1.20.1 update

+ Ts' Inventory saving/loading utility.

+ New system for replacing vanilla items with another. (For use in custom crafting knowledge book shenanigans.)

+ New item/block tags.

+ New passive tags which indicate if the player is in various states of "danger" (Targeted by mobs, in the void, in a damage block, falling, drowning, taking DoT, or any.)

+ A function alongside the aforementioned tags that gives the player a generic "You cannot do this because of X" error message in the actionbar if they are under whatever form of "danger."

<-> README.md formatting fixes.

<-> Important bug fix to the vanilla clear system to prevent it eating items in slot 11 and 12 when it was meant to take from just 11, and 12 would never work. Oh, how the little typos that can cause big problems...

Further documentation on github.
```