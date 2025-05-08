
#copy 1st entry into compilation array
data modify storage bb:lib sudo_root.parsing.removed_ends.array append from storage bb:lib sudo_root.parsing.array[0]

#remove entry
data remove storage bb:lib sudo_root.parsing.array[0]

#check if this is the last digit
execute if data storage bb:lib sudo_root.parsing.array[1] run function bb:internal/systems/string_manip/remove_ends/recursive_tear
