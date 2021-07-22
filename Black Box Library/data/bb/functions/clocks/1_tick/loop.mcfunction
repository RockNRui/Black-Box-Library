# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 7/21/21
# Last Edit : 7/21/21
# Name      : 1 Tick Clock
# Use       : A looping clock for running other functions at a rate of 1/t.

#Loop
schedule function bb:clocks/1_tick/loop 1t

#As Player
execute as @a at @s run function bb:clocks/1_tick/as_player