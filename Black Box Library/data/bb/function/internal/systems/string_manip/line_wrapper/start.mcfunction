
data modify storage bb:lib sudo_root.parsing.string set from storage bb:lib sudo_root.parsing.wrapper_input
function bb:internal/systems/string_manip/basic_tear/start

function bb:internal/systems/string_manip/compile_metadata/start

scoreboard players set $wrap.line_length bbl.main 0
scoreboard players set $wrap.line_count bbl.main 1
scoreboard players set $wrap.wrapper_end bbl.main 1
data remove storage bb:lib sudo_root.parsing.wrapper_array

function bb:internal/systems/string_manip/line_wrapper/recurse
