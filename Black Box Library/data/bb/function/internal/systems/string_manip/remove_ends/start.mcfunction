
data remove storage bb:lib sudo_root.parsing.removed_ends

function bb:internal/systems/string_manip/basic_tear/start

data remove storage bb:lib sudo_root.parsing.array[0]

function bb:internal/systems/string_manip/remove_ends/recursive_tear

data modify storage bbl:concat sudo_root.array set from storage bb:lib sudo_root.parsing.removed_ends.array
function bb:internal/systems/string_manip/concat/start
