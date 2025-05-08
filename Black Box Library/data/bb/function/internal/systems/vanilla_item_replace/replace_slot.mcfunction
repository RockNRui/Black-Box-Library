
function inv:save

execute if score $found_slot bbl.main matches 0..18 run function bb:lib/vanilla_item_replace/0_18
execute if score $found_slot bbl.main matches 19..35 run function bb:lib/vanilla_item_replace/19_35

function inv:load
