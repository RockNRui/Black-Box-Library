
function bb:internal/systems/equips/get_inventory
function bb:internal/systems/equips/scan/main

execute if score @s phe_listen matches ..0 run scoreboard players add @s phe_listen 1
execute if score @s ehp_listen matches ..0 run scoreboard players add @s ehp_listen 1
