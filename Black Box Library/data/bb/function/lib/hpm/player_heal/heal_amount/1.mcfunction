
scoreboard players remove @s bbl.heal_queue 1

#Summon area of effect cloud
summon area_effect_cloud ~ ~ ~ {Particle:{type:"block",block_state:"minecraft:air"},ReapplicationDelay:0,Radius:0.1f,RadiusPerTick:0f,RadiusOnUse:-5f,Duration:10,DurationOnUse:0f,Age:-1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:regeneration",amplifier:7,duration:1,show_particles:0b}]}}