
#Check in void
execute if entity @s[y=-10000,dy=9936] run function bb:internal/systems/danger_check/in_void

#If not in void, check if in damage block
execute if entity @s[tag=!bbl.in_danger] run function bb:internal/systems/danger_check/check/in_damage_block
