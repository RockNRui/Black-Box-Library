
execute store result score $found_count bbl.main run data get storage bbl:vanilla_clear sudo_root.internal.inventory[0].count
scoreboard players operation $return_count bbl.main += $found_count bbl.main

execute if score $clear_count bbl.main matches 1.. if score $found_count bbl.main matches 1.. run function bb:lib/vanilla_item_clear/get_slot