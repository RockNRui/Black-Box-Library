execute if score slot bbl.inventory matches 0..8 if score count bbl.inventory matches 1.. run function bb:internal/systems/inv/save/handle_hotbar
execute if score slot bbl.inventory matches 9..35 run function bb:internal/systems/inv/save/handle_inventory
execute if score slot bbl.inventory matches 100..103 run function bb:internal/systems/inv/save/handle_armor
execute if score slot bbl.inventory matches -106 run function bb:internal/systems/inv/save/handle_offhand