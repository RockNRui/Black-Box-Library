
#Check drowning
execute store result score $air_remaining bbl.main run data get entity @s Air
execute if score $air_remaining bbl.main matches ..299 run function bb:internal/systems/danger_check/drowning

#If not drowning, check taking DoT
execute if entity @s[tag=!bbl.in_danger] run function bb:internal/systems/danger_check/check/taking_dot
