
scoreboard players remove @s bbl.move.mute 1

execute if score @s bbl.move.mute matches 1 run function bb:internal/systems/move_detector/mute_end
