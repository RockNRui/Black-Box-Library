
##Store damage being done
#Resets
scoreboard players set $player.start_damage bbl.main 0
scoreboard players set $player.start_health bbl.main 0
#Store
scoreboard players operation $player.start_damage bbl.main = @s bbl.damage_queue
scoreboard players operation $player.start_health bbl.main = @s bbl.p_health
#Kill if projected to die
execute if score $player.start_damage bbl.main >= $player.start_health bbl.main run kill @s

#Continue calculations if alive
execute unless score $player.start_damage bbl.main >= $player.start_health bbl.main run function bb:lib/hpm/player_damage_true/health
