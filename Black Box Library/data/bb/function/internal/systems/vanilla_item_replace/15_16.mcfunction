
execute if score $found_slot bbl.main matches 15 run data modify storage bbl:inv inv.all[{Slot:15b}].count set from storage bbl:vanilla_replace sudo_root.custom_item.count
execute if score $found_slot bbl.main matches 15 run data modify storage bbl:inv inv.all[{Slot:15b}].id set from storage bbl:vanilla_replace sudo_root.custom_item.id
execute if score $found_slot bbl.main matches 15 run data modify storage bbl:inv inv.all[{Slot:15b}].components set from storage bbl:vanilla_replace sudo_root.custom_item.components

execute if score $found_slot bbl.main matches 16 run data modify storage bbl:inv inv.all[{Slot:16b}].count set from storage bbl:vanilla_replace sudo_root.custom_item.count
execute if score $found_slot bbl.main matches 16 run data modify storage bbl:inv inv.all[{Slot:16b}].id set from storage bbl:vanilla_replace sudo_root.custom_item.id
execute if score $found_slot bbl.main matches 16 run data modify storage bbl:inv inv.all[{Slot:16b}].components set from storage bbl:vanilla_replace sudo_root.custom_item.components

