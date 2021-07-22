# Datapack  : Black Box Archive
# Author(s) : RockNRed
# Created   : 7/21/21
# Last Edit : 7/21/21
# Name      : Install
# Use       : Installs various dependant scores aswell as the forceloaded chunk.

#Forceload chunk.
forceload add 4206857 4206872


#Add scoreboards
#\Score Storage Location
scoreboard objectives add bbl.storage dummy
#\Constants
scoreboard objectives add bbl.constant dummy
#\Relog score
scoreboard objectives add bbl.relog minecraft.custom:minecraft.leave_game
#\RNG
scoreboard objectives add bbl.rng dummy


#Set constants
#\-1
scoreboard players set $-1 bbl.constant -1
#\1
scoreboard players set $-1 bbl.constant 1
#\2
scoreboard players set $-1 bbl.constant 2
#\3
scoreboard players set $-1 bbl.constant 3
#\4
scoreboard players set $-1 bbl.constant 4
#\5
scoreboard players set $-1 bbl.constant 5
#\8
scoreboard players set $-1 bbl.constant 8
#\10
scoreboard players set $-1 bbl.constant 10
#\15
scoreboard players set $-1 bbl.constant 15
#\20
scoreboard players set $-1 bbl.constant 20
#\100
scoreboard players set $-1 bbl.constant 100
#\115
scoreboard players set $-1 bbl.constant 115


#Forceload chunk
execute unless block 4206849 1 4206865 diamond_block run function bb:sys/build_chunk
#\Working shulker
execute unless block 4206862 1 4206865 black_shulker_box run setblock 4206862 1 4206865 black_shulker_box

