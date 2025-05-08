
data modify storage bb:lib sudo_root.parsing.string set from storage bb:lib sudo_root.parsing.tag_input
function bb:internal/systems/string_manip/basic_tear/start

function bb:internal/systems/string_manip/compile_metadata/start

data remove storage bb:lib sudo_root.parsing.internal.tag_array
data modify storage bb:lib sudo_root.parsing.internal.tag_array append value ""

function bb:internal/systems/string_manip/transform_tag/recurse

data modify storage bb:lib sudo_root.parsing.internal.tag_array append value ""

data modify storage bbl:concat sudo_root.array set from storage bb:lib sudo_root.parsing.internal.tag_array
function bb:internal/systems/string_manip/concat/start
