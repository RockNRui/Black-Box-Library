
#Get current health and scale * 100
execute store result score $md.health bbl.main run data get entity @s Health 100
scoreboard players operation @s bbl.damage_queue *= $100 bbl.constant

#Add the Absorption of the mob to stored health value
execute store result score $md.abs bbl.main run data get entity @s AbsorptionAmount 100
scoreboard players operation $md.health bbl.main += $md.abs bbl.main

#Check if the damage kills or overkills the mob, and /kill if so
scoreboard players operation $md.health bbl.main -= @s bbl.damage_queue
execute if score $md.health bbl.main matches ..0 run function bb:lib/hpm/mob_damage_true/totem_proc

#If the were to survive the damage, deal damage acordingly.
execute if score $md.health bbl.main matches 1.. run function bb:lib/hpm/mob_damage_true/deal_damage
