


execute at @s if block ~ ~-0.01 ~ air run summon area_effect_cloud ~ ~ ~ {Particle:"portal",ReapplicationDelay:1,Radius:1f,RadiusPerTick:3f,Duration:7,Color:3342425,Effects:[{Id:9b,Amplifier:1b,Duration:80},{Id:15b,Amplifier:1b,Duration:20},{Id:25b,Amplifier:230b,Duration:80}]}
execute at @s if entity @e[tag=!notick,type=arrow,distance=0..4] run summon area_effect_cloud ~ ~ ~ {Particle:"portal",ReapplicationDelay:1,Radius:1f,RadiusPerTick:3f,Duration:7,Color:3342425,Effects:[{Id:9b,Amplifier:1b,Duration:80},{Id:15b,Amplifier:1b,Duration:20},{Id:25b,Amplifier:230b,Duration:80}]}