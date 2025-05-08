
#Get player's max health
execute store result score $target_missing_health bbl.main run attribute @s minecraft:generic.max_health get
#Get player's current health
function bb:lib/get_target_status/get_health
#Minus the player's health from their max health
scoreboard players operation $target_missing_health bbl.main -= $target_health bbl.main
