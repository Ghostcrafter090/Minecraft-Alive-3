
function world:weather/storm.0/0
execute as @e[tag=!notick,name=storm] unless entity @s[scores={wt_done=110..}] run scoreboard players add @s wt_done 1
execute if entity @e[tag=dmain,scores={storm_clk=1000..}] run summon marker 0 100 0 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"storm"}'}
execute as @e[name=storm] run function world:weather/storm.0/3
execute if entity @e[tag=dmain,scores={storm_clk=1000..}] run scoreboard players set @e[tag=dmain] storm_clk 0
scoreboard players add @e[tag=dmain] wt_effect_clock 1
execute as @e[tag=dmain,scores={wt_effect_clock=2..}] run function world:weather/storm.0/6
execute if entity @e[tag=dmain,scores={wt_effect_clock=2..}] as @a run scoreboard players operation @s wt_distance = @s wt_distancec
execute as @e[tag=dmain,scores={wt_effect_clock=2..}] run scoreboard players set @e[tag=dmain] wt_effect_clock 0
scoreboard players add @a wt_tick 1
execute in minecraft:overworld run function world:weather/storm.0/10
execute in the_ways:the_ways run function world:weather/storm.0/11
execute as @a if entity @s[scores={wt_tick=100..}] run scoreboard players set @s wt_tick 0
execute as @e[name=storm] run function world:weather/storm.0/13