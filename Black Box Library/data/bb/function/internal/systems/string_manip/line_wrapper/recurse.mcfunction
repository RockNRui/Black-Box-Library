
#Add string to plain array
data modify storage bb:lib sudo_root.parsing.wrapper_array.0.array append from storage bb:lib sudo_root.parsing.metadata_array[0].id

#Add length to line
#Store width
execute store result score $wrap.add_length bbl.main run data get storage bb:lib sudo_root.parsing.metadata_array[0].width
#Add to total width
scoreboard players operation $wrap.line_length bbl.main += $wrap.add_length bbl.main

#Check for space/comma
scoreboard players set $wrap.special_character bbl.main 0
execute store result score $wrap.special_character bbl.main run data get storage bb:lib sudo_root.parsing.metadata_array[0].special_character

#Space
execute if score $wrap.special_character bbl.main matches 1 run function bb:internal/systems/string_manip/line_wrapper/character/space

#Remove entry of data
data remove storage bb:lib sudo_root.parsing.metadata_array[0]
#If more data found, loop
execute if data storage bb:lib sudo_root.parsing.metadata_array[0] run function bb:internal/systems/string_manip/line_wrapper/recurse
#End
execute if score $wrap.wrapper_end bbl.main matches 1.. unless data storage bbl:item_gen sudo_root.parsing.metadata_array[0] run function bb:internal/systems/string_manip/line_wrapper/done
