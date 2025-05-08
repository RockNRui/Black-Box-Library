
#execute store result score $stat_calc bbl.main run data get storage bbl:equips sudo_root.player_inventory.offhand.components.minecraft:custom_data.bbl.string_book
#execute if score $stat_calc bbl.main matches 1.. run function bb:internal/systems/error_messages/book_offhand
