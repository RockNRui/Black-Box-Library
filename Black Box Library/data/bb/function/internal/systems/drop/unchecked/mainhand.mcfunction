# Datapack  : Black Box Library
# Author(s) : RockNRed
# Created   : 4/17/22
# Last Edit : 4/17/22
# Name      : Drop Slot Mainhand
# Use       : Drop relevant inventory slot.


execute store result score $temp bbl.main run data get entity @s SelectedItemSlot

execute if score $temp bbl.main matches 0 run function bb:lib/drop_item_slot/0
execute if score $temp bbl.main matches 1 run function bb:lib/drop_item_slot/1
execute if score $temp bbl.main matches 2 run function bb:lib/drop_item_slot/2
execute if score $temp bbl.main matches 3 run function bb:lib/drop_item_slot/3
execute if score $temp bbl.main matches 4 run function bb:lib/drop_item_slot/4
execute if score $temp bbl.main matches 5 run function bb:lib/drop_item_slot/5
execute if score $temp bbl.main matches 6 run function bb:lib/drop_item_slot/6
execute if score $temp bbl.main matches 7 run function bb:lib/drop_item_slot/7
execute if score $temp bbl.main matches 8 run function bb:lib/drop_item_slot/8