
scoreboard players remove @s bbl.heal_queue 32

#Summon area of effect cloud
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},ReapplicationDelay:0,Radius:0.1f,RadiusOnUse:-5f,Duration:10,DurationOnUse:0f,Age:-1,WaitTime:0,potion_contents:{potion:"minecraft:water",custom_effects:[{id:"minecraft:instant_health",amplifier:4,duration:2}]}}
