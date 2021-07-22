# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 7/21/21
# Last Edit : 7/21/21
# Name      : 1 Tick Clock As Player
# Use       : A looping clock ran as all players at a rate of 1/t for other functions.

#Initialize
#\By lack of tag
execute unless predicate bbl:initialized run function bb:sys/init/player

#Relog check
execute if score @s bbl.relog matches 1.. run function bb:sys/relog