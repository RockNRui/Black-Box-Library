
data modify storage bb:lib sudo_root.parsing.tag_input set from storage bbl:equips sudo_root.player_inventory.mainhand.components."minecraft:written_book_content".pages[0].raw

clear @s minecraft:writable_book[custom_data={bbl:{string_book:1}}]

function bb:internal/systems/string_manip/transform_tag/give_book

function bb:internal/systems/string_manip/transform_tag/start
