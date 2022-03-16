


particle minecraft:electric_spark ~ ~10 ~ 0 30 0 0.1 100 force
execute unless entity @e[tag=!notick,tag=spinner,distance=0..6] run summon marker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["spinner"]}