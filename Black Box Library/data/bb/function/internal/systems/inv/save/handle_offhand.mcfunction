execute store result storage bbl:inv inv.new[0].Slot byte 1 run scoreboard players add slot bbl.inventory 106

data modify storage bbl:inv inv.offhand append from storage bbl:inv inv.new[0]
data remove storage bbl:inv inv.new[0]

function bb:internal/systems/inv/save/slot
execute if data storage bbl:inv inv.new[0] run function bb:internal/systems/inv/save/sort_all
