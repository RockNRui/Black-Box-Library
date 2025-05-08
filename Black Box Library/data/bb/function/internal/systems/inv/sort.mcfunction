data modify storage bbl:inv inv.new set value []
data modify storage bbl:inv inv.hotbar set value []
data modify storage bbl:inv inv.armor set value []
data modify storage bbl:inv inv.offhand set value []
data modify storage bbl:inv inv.inventory set value []

# Prepare
data modify storage bbl:inv inv.new set from storage bbl:inv inv.all
function bb:internal/systems/inv/save/slot
execute store result score count bbl.inventory run data get storage bbl:inv inv.new

# Sort
function bb:internal/systems/inv/save/sort_all

# Reset
data remove storage bbl:inv inv.new