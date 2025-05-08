
#Return the health equal to removing the health of the mob minus the damage. Take from Absorption first.
execute store result score $md.health bbl.main run data get entity @s Health 100
execute store result score $md.abs bbl.main run data get entity @s AbsorptionAmount 100

#Get the amount of damage we reduce from Absorption
scoreboard players operation $md.abs bbl.main -= @s bbl.damage_queue
execute if score $md.abs bbl.main matches 0.. run function bb:lib/hpm/mob_damage_true/damage/absorbed
execute if score $md.abs bbl.main matches ..-1 run function bb:lib/hpm/mob_damage_true/damage/not_absorbed
