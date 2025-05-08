
data modify storage bbl:vanilla_clear sudo_root.internal.inventory set from entity @s Inventory
scoreboard players set $return_count bbl.main 0
scoreboard players set $stop_recursion bbl.main 0
scoreboard players set $data_match bbl.main 0

function bb:lib/vanilla_item_clear/recurse
