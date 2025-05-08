
# Reset
function bb:internal/systems/inv/reset

# Store
data modify storage bbl:inv inv.all set from entity @s Inventory
data modify storage bbl:inv inv.equip set from entity @s equipment

data modify storage bbl:inv inv.equip.offhand.Slot set value -106b
data modify storage bbl:inv inv.equip.feet.Slot set value 100b
data modify storage bbl:inv inv.equip.legs.Slot set value 101b
data modify storage bbl:inv inv.equip.chest.Slot set value 102b
data modify storage bbl:inv inv.equip.head.Slot set value 103b

data modify storage bbl:inv inv.all append from storage bbl:inv inv.equip.offhand
data modify storage bbl:inv inv.all append from storage bbl:inv inv.equip.feet
data modify storage bbl:inv inv.all append from storage bbl:inv inv.equip.legs
data modify storage bbl:inv inv.all append from storage bbl:inv inv.equip.chest
data modify storage bbl:inv inv.all append from storage bbl:inv inv.equip.head
