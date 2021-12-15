# Define
scoreboard objectives add machin_shin_inta dummy
scoreboard objectives add machin_shin_intb dummy
scoreboard objectives add ms_done dummy
scoreboard objectives add machin_shin_posx dummy
scoreboard objectives add machin_shin_posz dummy
scoreboard objectives add machin_shin_velx dummy
scoreboard objectives add machin_shin_velz dummy
scoreboard objectives add machin_shin_clk dummy
scoreboard objectives add ms_distance dummy
scoreboard objectives add ms_distancex dummy
scoreboard objectives add ms_distancez dummy
scoreboard objectives add ms_distance_int dummy
scoreboard objectives add ms_effect_clock dummy
scoreboard objectives add pigmenmad dummy

# Main
scoreboard players add @e[name=dmain] machin_shin_clk 1
execute as @e[name=machin_shin] unless entity @s[scores={ms_done=11..}] run scoreboard players add @s ms_done 1
execute if entity @e[name=dmain,scores={machin_shin_clk=3000..}] run summon armor_stand 0 100 0 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"machin_shin"}'}
execute as @e[name=machin_shin] if entity @s[scores={ms_done=1..1}] run scoreboard players set @s machin_shin_inta 2291
execute as @e[name=machin_shin] if entity @s[scores={ms_done=1..1}] run scoreboard players set @s machin_shin_intb 21474836
execute as @e[name=machin_shin] if entity @s[scores={ms_done=2..2}] run scoreboard players operation @s machin_shin_posx = @r random
execute as @e[name=machin_shin] if entity @s[scores={ms_done=3..3}] run scoreboard players operation @s machin_shin_posz = @r random
execute as @e[name=machin_shin] if entity @s[scores={ms_done=4..4}] run scoreboard players operation @s machin_shin_velx = @r random
execute as @e[name=machin_shin] if entity @s[scores={ms_done=5..5}] run scoreboard players operation @s machin_shin_velz = @r random
execute as @e[name=machin_shin] if entity @s[scores={ms_done=6..6}] run scoreboard players operation @s machin_shin_posx /= @s machin_shin_inta
execute as @e[name=machin_shin] if entity @s[scores={ms_done=7..7}] run scoreboard players operation @s machin_shin_posz /= @s machin_shin_inta
execute as @e[name=machin_shin] if entity @s[scores={ms_done=8..8}] run scoreboard players operation @s machin_shin_velx /= @s machin_shin_intb
execute as @e[name=machin_shin] if entity @s[scores={ms_done=9..9}] run scoreboard players operation @s machin_shin_velz /= @s machin_shin_intb
execute as @e[name=machin_shin] if entity @s[scores={ms_done=10..}] run scoreboard players operation @s machin_shin_posx -= @s machin_shin_velx
execute as @e[name=machin_shin] if entity @s[scores={ms_done=10..}] run scoreboard players operation @s machin_shin_posz -= @s machin_shin_velz
execute if entity @e[name=dmain,scores={machin_shin_clk=3000..}] run scoreboard players set @e[name=dmain] machin_shin_clk 0

# Distance Calculation
scoreboard players add @e[name=dmain] ms_effect_clock 1
execute as @e[name=dmain,scores={ms_effect_clock=2..}] as @e[name=machin_shin] run function world:dimensions/the_ways/machin_shin/getpos
execute as @e[name=dmain,scores={ms_effect_clock=2..}] run scoreboard players set @e[name=dmain] ms_effect_clock 0

# Pigmen
scoreboard players add @e[name=dmain] pigmenmad 1
# execute in the_ways:the_ways if entity @e[name=dmain,scores={pigmenmad=202..202}] as @e[type=minecraft:zombified_piglin,distance=0..] run data modify entity @s AngerTime set value 1000
execute in the_ways:the_ways if entity @e[name=dmain,scores={pigmenmad=203..203}] as @e[type=minecraft:zombified_piglin,distance=0..] at @s at @e[distance=1..,limit=1,sort=nearest] unless entity @e[distance=..1,type=armor_stand] unless entity @e[distance=..1,type=item] run data modify entity @s AngryAt set from entity @e[type=!item,distance=..1,limit=1,sort=nearest] UUID
execute if entity @e[name=dmain,scores={pigmenmad=203..}] run scoreboard players set @e[name=dmain] pigmenmad 0

# Waygates
# function world:dimensions/the_ways/waygate