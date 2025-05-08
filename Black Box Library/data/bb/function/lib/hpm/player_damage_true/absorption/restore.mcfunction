
#Converting into amplifier
scoreboard players set @s bbl.damage_queue 0
scoreboard players operation $player.absorption bbl.main /= $4 bbl.constant
scoreboard players remove $player.absorption bbl.main 1

#Restoring effect to nearest value
execute if score $player.absorption bbl.main matches 0.. run function bb:lib/hpm/player_damage_true/absorption/restore_cloud