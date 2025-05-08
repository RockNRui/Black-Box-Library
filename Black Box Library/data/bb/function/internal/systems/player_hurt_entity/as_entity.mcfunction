
execute if entity @s[tag=no_iframes] run function bb:internal/systems/no_iframes

execute if entity @s[tag=!no_iframes] if score $bbl.config.no_iframes bbl.main matches 1 run function bb:internal/systems/no_iframes
