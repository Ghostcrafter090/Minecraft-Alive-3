scoreboard objectives add aboveground dummy

execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=35630..40000}] run playsound minecraft:weather.rain master @a ~ ~ ~ 0.002
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=30260..35630}] run playsound minecraft:weather.rain master @a ~ ~ ~ 0.004
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=25890..30260}] run playsound minecraft:weather.rain master @a ~ ~ ~ 0.006
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=20520..25890}] run playsound minecraft:weather.rain master @a ~ ~ ~ 0.008
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=18150..20520}] run playsound minecraft:weather.rain master @a ~ ~ ~ 0.01
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=17780..18150}] run playsound minecraft:weather.rain master @a ~ ~ ~ 0.02
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=17410..17780}] run playsound minecraft:weather.rain master @a ~ ~ ~ 0.03
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=17040..17410}] run playsound minecraft:weather.rain master @a ~ ~ ~ 0.04
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=16670..17040}] run playsound minecraft:weather.rain master @a ~ ~ ~ 0.05
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=16300..16670}] run playsound minecraft:weather.rain master @a ~ ~ ~ 0.06
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=15930..16300}] run playsound minecraft:weather.rain master @a ~ ~ ~ 0.07
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=15560..15930}] run playsound minecraft:weather.rain master @a ~ ~ ~ 0.08
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=15190..15560}] run playsound minecraft:weather.rain master @a ~ ~ ~ 0.09
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=14820..15190}] run playsound minecraft:weather.rain master @a ~ ~ ~ 0.1
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=14450..14820}] run playsound minecraft:weather.rain master @a ~ ~ ~ 0.2
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=14080..14450}] run playsound minecraft:weather.rain master @a ~ ~ ~ 0.3
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=13710..14080}] run playsound minecraft:weather.rain master @a ~ ~ ~ 0.4
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=13340..13710}] run playsound minecraft:weather.rain master @a ~ ~ ~ 0.5
execute as @a[scores={aboveground=0..0}] run stopsound @a master minecraft:weather.rain

execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=35630..40000}] run particle minecraft:dripping_water ~ ~30 ~ 20 0 20 10 1 force
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=30260..35630}] run particle minecraft:dripping_water ~ ~30 ~ 20 0 20 10 10 force
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=25890..30260}] run particle minecraft:dripping_water ~ ~30 ~ 20 0 20 10 20 force 
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=20520..25890}] run particle minecraft:dripping_water ~ ~30 ~ 20 0 20 10 30 force
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=18150..20520}] run particle minecraft:dripping_water ~ ~30 ~ 20 0 20 10 40 force
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=17780..18150}] run particle minecraft:dripping_water ~ ~30 ~ 20 0 20 10 50 force
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=17410..17780}] run particle minecraft:dripping_water ~ ~30 ~ 20 0 20 10 60 force
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=17040..17410}] run particle minecraft:dripping_water ~ ~30 ~ 20 0 20 10 70 force
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=16670..17040}] run particle minecraft:dripping_water ~ ~30 ~ 20 0 20 10 80 force
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=16300..16670}] run particle minecraft:dripping_water ~ ~30 ~ 20 0 20 10 90 force
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=15930..16300}] run particle minecraft:dripping_water ~ ~30 ~ 20 0 20 10 100 force
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=15560..15930}] run particle minecraft:dripping_water ~ ~30 ~ 20 0 20 10 120 force
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=15190..15560}] run particle minecraft:dripping_water ~ ~30 ~ 20 0 20 10 130 force
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=14820..15190}] run particle minecraft:dripping_water ~ ~30 ~ 20 0 20 10 135 force
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=14450..14820}] run particle minecraft:dripping_water ~ ~30 ~ 20 0 20 10 140 force
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=0..14450}] run particle minecraft:dripping_water ~ ~30 ~ 20 0 20 10 145 force

execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={windspeed=..3}] run playsound environs:wind master @a ~ ~ ~ 0.1 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={windspeed=4..4}] run playsound environs:wind master @a ~ ~ ~ 0.2 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={windspeed=5..5}] run playsound environs:wind master @a ~ ~ ~ 0.3 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={windspeed=6..6}] run playsound environs:wind master @a ~ ~ ~ 0.4 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={windspeed=7..7}] run playsound environs:wind master @a ~ ~ ~ 0.6 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={windspeed=8..8}] run playsound environs:wind master @a ~ ~ ~ 0.8 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={windspeed=9..9}] run playsound environs:wind master @a ~ ~ ~ 0.9 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={windspeed=10..}] run playsound environs:wind master @a ~ ~ ~ 1 2

execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={wind=..250}] run playsound environs:arctic.wind master @a ~ ~ ~ 0.00008 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={wind=250..255}] run playsound environs:arctic.wind master @a ~ ~ ~ 0.0004 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={wind=255..260}] run playsound environs:arctic.wind master @a ~ ~ ~ 0.008 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={wind=260..265}] run playsound environs:arctic.wind master @a ~ ~ ~ 0.04 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={wind=265..270}] run playsound environs:arctic.wind master @a ~ ~ ~ 0.08 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={wind=270..275}] run playsound environs:arctic.wind master @a ~ ~ ~ 0.1 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={wind=275..280}] run playsound environs:arctic.wind master @a ~ ~ ~ 0.4 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={wind=285..}] run playsound environs:arctic.wind master @a ~ ~ ~ 0.8 2

execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={wind=..200}] run playsound environs:desert.wind master @a ~ ~ ~ 0.00008 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={wind=200..215}] run playsound environs:desert.wind master @a ~ ~ ~ 0.004 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={wind=215..230}] run playsound environs:desert.wind master @a ~ ~ ~ 0.008 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={wind=230..245}] run playsound environs:desert.wind master @a ~ ~ ~ 0.04 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={wind=245..260}] run playsound environs:desert.wind master @a ~ ~ ~ 0.08 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={wind=260..275}] run playsound environs:desert.wind master @a ~ ~ ~ 0.1 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={wind=275..290}] run playsound environs:desert.wind master @a ~ ~ ~ 0.4 2
execute in minecraft:overworld as @a[distance=0..93750,scores={aboveground=1..1}] at @s if entity @s[scores={wind=290..}] run playsound environs:desert.wind master @a ~ ~ ~ 0.8 2

execute as @a at @s unless blocks ~ ~1 ~ ~2 255 ~2 ~ 255 ~ masked run scoreboard players set @s aboveground 0
execute as @a at @s if blocks ~2 ~1 ~2 ~2 255 ~2 ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~1 ~1 ~2 ~1 255 ~2 ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~ ~1 ~2 ~ 255 ~2 ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~-1 ~1 ~2 ~-1 255 ~2 ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~-2 ~1 ~2 ~-2 255 ~2 ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~2 ~1 ~1 ~2 255 ~1 ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~1 ~1 ~1 ~1 255 ~1 ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~ ~1 ~1 ~ 255 ~1 ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~-1 ~1 ~1 ~-1 255 ~1 ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~-2 ~1 ~1 ~-2 255 ~1 ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~2 ~1 ~ ~2 255 ~ ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~1 ~1 ~ ~1 255 ~ ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~ ~1 ~ ~ 255 ~ ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~-1 ~1 ~ ~-1 255 ~ ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~-2 ~1 ~ ~-2 255 ~ ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~2 ~1 ~-1 ~2 255 ~-1 ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~1 ~1 ~-1 ~1 255 ~-1 ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~ ~1 ~-1 ~ 255 ~-1 ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~-1 ~1 ~-1 ~-1 255 ~-1 ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~-2 ~1 ~-1 ~-2 255 ~-1 ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~2 ~1 ~-2 ~2 255 ~-2 ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~1 ~1 ~-2 ~1 255 ~-2 ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~ ~1 ~-2 ~ 255 ~-2 ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~-1 ~1 ~-2 ~-1 255 ~-2 ~ 255 ~ masked run scoreboard players set @s aboveground 1
execute as @a at @s if blocks ~-2 ~1 ~-2 ~-2 255 ~-2 ~ 255 ~ masked run scoreboard players set @s aboveground 1

