
#Check if max line length has been reached
execute if score $wrap.line_length bbl.main >= $wrap.max_line_length bbl.main run function bb:internal/systems/string_manip/line_wrapper/character/limit_reached
