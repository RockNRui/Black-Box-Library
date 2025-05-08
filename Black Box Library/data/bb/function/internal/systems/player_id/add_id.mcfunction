
execute store result score $id_1 bbl.storage run data get entity @s UUID[0]
execute store result score $id_2 bbl.storage run data get entity @s UUID[1]

scoreboard players operation $id_1 bbl.storage *= $id_2 bbl.storage

execute store result score $id_3 bbl.storage run data get entity @s UUID[2]

scoreboard players operation $id_1 bbl.storage *= $id_3 bbl.storage

execute store result score $id_4 bbl.storage run data get entity @s UUID[3]

scoreboard players operation $id_1 bbl.storage *= $id_4 bbl.storage

execute if score $id_1 bbl.storage matches -2147483648..0 run scoreboard players operation $id_1 bbl.storage *= $-1 bbl.constant

scoreboard players operation @s bbl.id = $id_1 bbl.storage
