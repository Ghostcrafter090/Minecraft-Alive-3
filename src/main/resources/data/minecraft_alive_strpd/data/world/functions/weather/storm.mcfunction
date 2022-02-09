
function minecraft_alive_strpd:data/world/functions/weather/storm_/0
execute as @e[name=storm] unless entity @s[scores={wt_done=110..}] run scoreboard players add @s wt_done 1
execute if entity @e[name=dmain,scores={storm_clk=1000..}] run summon marker 0 100 0 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"storm"}'}
execute as @e[name=storm] run function minecraft_alive_strpd:data/world/functions/weather/storm_/3
execute if entity @e[name=dmain,scores={storm_clk=1000..}] run scoreboard players set @e[name=dmain] storm_clk 0
scoreboard players add @e[name=dmain] wt_effect_clock 1
execute as @e[name=dmain,scores={wt_effect_clock=2..}] run function minecraft_alive_strpd:data/world/functions/weather/storm_/6
execute if entity @e[name=dmain,scores={wt_effect_clock=2..}] as @a run scoreboard players operation @s wt_distance = @s wt_distancec
execute as @e[name=dmain,scores={wt_effect_clock=2..}] run scoreboard players set @e[name=dmain] wt_effect_clock 0
scoreboard players add @a wt_tick 1
execute in minecraft:overworld run function minecraft_alive_strpd:data/world/functions/weather/storm_/10
execute in the_ways:the_ways run function minecraft_alive_strpd:data/world/functions/weather/storm_/11
execute as @a if entity @s[scores={wt_tick=100..}] run scoreboard players set @s wt_tick 0
function world:weather/windeffect
execute as @e[name=storm] run function minecraft_alive_strpd:data/world/functions/weather/storm_/14