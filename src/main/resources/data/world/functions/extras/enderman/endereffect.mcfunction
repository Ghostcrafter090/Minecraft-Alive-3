
function world:extras/enderman/endereffect.0/0
execute as @e[tag=!notick,type=enderman] run function world:extras/enderman/endereffect.0/1
execute as @e[type=ender_pearl] at @s if entity @e[distance=0..16] run summon area_effect_cloud ~ ~ ~ {Particle:"portal",ReapplicationDelay:1,Radius:1f,RadiusPerTick:3f,Duration:10,Color:3342425,Effects:[{Id:9b,Amplifier:1b,Duration:80},{Id:15b,Amplifier:1b,Duration:20},{Id:25b,Amplifier:230b,Duration:20}]}
execute as @e[type=endermite] run function world:extras/enderman/endereffect.0/3