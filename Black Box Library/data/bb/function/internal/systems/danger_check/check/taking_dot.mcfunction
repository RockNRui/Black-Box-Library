
#Check freezing
execute store result score $freeze_time bbl.main run data get entity @s TicksFrozen
execute if score $freeze_time bbl.main matches 1.. run function bb:internal/systems/danger_check/taking_dot

#Check burning
execute store result score $fire bbl.main run data get entity @s Fire
execute unless score $fire bbl.main matches -20 run function bb:internal/systems/danger_check/taking_dot

#Check poison/wither
execute if predicate bb:has_dot run function bb:internal/systems/danger_check/taking_dot

#If not taking DoT, check targeted by mobs
execute if entity @s[tag=!bbl.in_danger] run function bb:internal/systems/danger_check/check/targeted_by_mobs
