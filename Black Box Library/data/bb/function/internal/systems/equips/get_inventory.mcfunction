
data remove storage bbl:equips sudo_root

function bb:internal/systems/pldata/read

data modify storage bbl:equips sudo_root.temp set from storage bbl:pldata sudo_root.working_data.bbl.inventory.current_tick
execute store result score $selected_slot bbl.main run data get storage bbl:pldata sudo_root.working_data.bbl.inventory.selected_slot

data remove storage bbl:equips sudo_root.player_inventory.mainhand
execute if score $selected_slot bbl.main matches 0 run data modify storage bbl:equips sudo_root.player_inventory.mainhand set from storage bbl:equips sudo_root.temp[{Slot:0b}]
execute if score $selected_slot bbl.main matches 1 run data modify storage bbl:equips sudo_root.player_inventory.mainhand set from storage bbl:equips sudo_root.temp[{Slot:1b}]
execute if score $selected_slot bbl.main matches 2 run data modify storage bbl:equips sudo_root.player_inventory.mainhand set from storage bbl:equips sudo_root.temp[{Slot:2b}]
execute if score $selected_slot bbl.main matches 3 run data modify storage bbl:equips sudo_root.player_inventory.mainhand set from storage bbl:equips sudo_root.temp[{Slot:3b}]
execute if score $selected_slot bbl.main matches 4 run data modify storage bbl:equips sudo_root.player_inventory.mainhand set from storage bbl:equips sudo_root.temp[{Slot:4b}]
execute if score $selected_slot bbl.main matches 5 run data modify storage bbl:equips sudo_root.player_inventory.mainhand set from storage bbl:equips sudo_root.temp[{Slot:5b}]
execute if score $selected_slot bbl.main matches 6 run data modify storage bbl:equips sudo_root.player_inventory.mainhand set from storage bbl:equips sudo_root.temp[{Slot:6b}]
execute if score $selected_slot bbl.main matches 7 run data modify storage bbl:equips sudo_root.player_inventory.mainhand set from storage bbl:equips sudo_root.temp[{Slot:7b}]
execute if score $selected_slot bbl.main matches 8 run data modify storage bbl:equips sudo_root.player_inventory.mainhand set from storage bbl:equips sudo_root.temp[{Slot:8b}]

data modify storage bbl:equips sudo_root.player_inventory.helmet set from storage bbl:equips sudo_root.temp[{Slot:103b}]
data modify storage bbl:equips sudo_root.player_inventory.chestplate set from storage bbl:equips sudo_root.temp[{Slot:102b}]
data modify storage bbl:equips sudo_root.player_inventory.leggings set from storage bbl:equips sudo_root.temp[{Slot:101b}]
data modify storage bbl:equips sudo_root.player_inventory.boots set from storage bbl:equips sudo_root.temp[{Slot:100b}]
data modify storage bbl:equips sudo_root.player_inventory.offhand set from storage bbl:equips sudo_root.temp[{Slot:-106b}]

data remove storage bbl:equips sudo_root.temp
