
scoreboard players operation $md.abs bbl.main *= $-1 bbl.constant
data modify entity @s AbsorptionAmount set value 0
execute store result entity @s Health float 0.01 run scoreboard players operation $md.health bbl.main -= $md.abs bbl.main
