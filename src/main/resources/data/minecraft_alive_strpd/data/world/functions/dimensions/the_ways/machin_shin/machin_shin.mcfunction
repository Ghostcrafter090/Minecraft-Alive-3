
function minecraft_alive_strpd:data/world/functions/dimensions/the_ways/machin_shin/machin_shin_/0
execute as @e[name=machin_shin] unless entity @s[scores={ms_done=11..}] run scoreboard players add @s ms_done 1
execute if entity @e[name=dmain,scores={machin_shin_clk=3000..}] run summon marker 0 100 0 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"machin_shin"}'}
execute as @e[name=machin_shin] run function minecraft_alive_strpd:data/world/functions/dimensions/the_ways/machin_shin/machin_shin_/3
execute if entity @e[name=dmain,scores={machin_shin_clk=3000..}] run scoreboard players set @e[name=dmain] machin_shin_clk 0
scoreboard players add @e[name=dmain] ms_effect_clock 1
execute as @e[name=dmain,scores={ms_effect_clock=2..}] run function minecraft_alive_strpd:data/world/functions/dimensions/the_ways/machin_shin/machin_shin_/6
scoreboard players add @e[name=dmain] pigmenmad 1
execute in the_ways:the_ways if entity @e[name=dmain,scores={pigmenmad=203..203}] as @e[type=minecraft:zombified_piglin,distance=0..] at @s at @e[distance=1..,limit=1,sort=nearest] unless entity @e[distance=..1,type=marker] unless entity @e[distance=..1,type=item] run data modify entity @s AngryAt set from entity @e[type=!item,distance=..1,limit=1,sort=nearest] UUID
execute if entity @e[name=dmain,scores={pigmenmad=203..}] run scoreboard players set @e[name=dmain] pigmenmad 0