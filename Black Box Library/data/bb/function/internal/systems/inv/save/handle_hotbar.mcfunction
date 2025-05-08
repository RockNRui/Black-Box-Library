data modify storage bbl:inv inv.hotbar append from storage bbl:inv inv.new[0]
data remove storage bbl:inv inv.new[0]

function bb:internal/systems/inv/save/slot
execute if data storage bbl:inv inv.new[0] run function bb:internal/systems/inv/save/sort_all