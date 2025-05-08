
clear @s
data modify storage bbl:inv inv.all set from storage bbl:pldata sudo_root.working_data.bbl.inventory.past_tick
function bb:lib/inv/load/call
