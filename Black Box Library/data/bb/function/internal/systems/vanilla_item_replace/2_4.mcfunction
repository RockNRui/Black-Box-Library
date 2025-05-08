
execute if score $found_slot bbl.main matches 2 run data modify storage bbl:inv inv.all[{Slot:2b}].count set from storage bbl:vanilla_replace sudo_root.custom_item.count
execute if score $found_slot bbl.main matches 2 run data modify storage bbl:inv inv.all[{Slot:2b}].id set from storage bbl:vanilla_replace sudo_root.custom_item.id
execute if score $found_slot bbl.main matches 2 run data modify storage bbl:inv inv.all[{Slot:2b}].components set from storage bbl:vanilla_replace sudo_root.custom_item.components

execute if score $found_slot bbl.main matches 3 run data modify storage bbl:inv inv.all[{Slot:3b}].count set from storage bbl:vanilla_replace sudo_root.custom_item.count
execute if score $found_slot bbl.main matches 3 run data modify storage bbl:inv inv.all[{Slot:3b}].id set from storage bbl:vanilla_replace sudo_root.custom_item.id
execute if score $found_slot bbl.main matches 3 run data modify storage bbl:inv inv.all[{Slot:3b}].components set from storage bbl:vanilla_replace sudo_root.custom_item.components

execute if score $found_slot bbl.main matches 4 run data modify storage bbl:inv inv.all[{Slot:4b}].count set from storage bbl:vanilla_replace sudo_root.custom_item.count
execute if score $found_slot bbl.main matches 4 run data modify storage bbl:inv inv.all[{Slot:4b}].id set from storage bbl:vanilla_replace sudo_root.custom_item.id
execute if score $found_slot bbl.main matches 4 run data modify storage bbl:inv inv.all[{Slot:4b}].components set from storage bbl:vanilla_replace sudo_root.custom_item.components

