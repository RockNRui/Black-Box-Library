
execute store result storage bb:lib sudo_root.parsing.wrapper_array.0.length int 1 run scoreboard players get $wrap.line_length bbl.main

scoreboard players set $wrap.line_length bbl.main 0

scoreboard players add $wrap.line_count bbl.main 1

data modify storage bbl:concat sudo_root.array set from storage bb:lib sudo_root.parsing.wrapper_array.0.array
function bb:internal/systems/string_manip/concat/start
data modify storage bb:lib sudo_root.parsing.wrapper_array.0.string set from storage bbl:concat sudo_root.string
data remove storage bb:lib sudo_root.parsing.wrapper_array.0.array

function bb:internal/systems/string_manip/line_wrapper/shift_plain_up

data remove storage bb:lib sudo_root.parsing.wrapper_array.0
