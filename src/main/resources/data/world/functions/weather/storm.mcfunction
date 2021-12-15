# Define
scoreboard objectives add storm_inta dummy
scoreboard objectives add storm_intb dummy
scoreboard objectives add wt_done dummy
scoreboard objectives add storm_posx dummy
scoreboard objectives add storm_posz dummy
scoreboard objectives add storm_velx dummy
scoreboard objectives add storm_velz dummy
scoreboard objectives add storm_clk dummy
scoreboard objectives add wt_distance dummy
scoreboard objectives add wt_distancex dummy
scoreboard objectives add wt_distancez dummy
scoreboard objectives add wt_distance_int dummy
scoreboard objectives add wt_effect_clock dummy
scoreboard objectives add pigmenmad dummy
scoreboard objectives add wt_distancea dummy
scoreboard objectives add wt_distanceb dummy
scoreboard objectives add wt_distancec dummy
scoreboard objectives add wt dummy
scoreboard objectives add wt_tick dummy
scoreboard objectives add wtdummytic dummy

# Main
scoreboard players add @e[name=dmain] storm_clk 1
execute as @e[name=storm] unless entity @s[scores={wt_done=110..}] run scoreboard players add @s wt_done 1
execute if entity @e[name=dmain,scores={storm_clk=1000..}] run summon armor_stand 0 100 0 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"storm"}'}
execute as @e[name=storm] if entity @s[scores={wt_done=10..10}] run scoreboard players set @s storm_inta 5291
execute as @e[name=storm] if entity @s[scores={wt_done=10..10}] run scoreboard players set @s storm_intb 214748360
execute as @e[name=storm] if entity @s[scores={wt_done=20..20}] run scoreboard players operation @s storm_posx = @r random
execute as @e[name=storm] if entity @s[scores={wt_done=30..30}] run scoreboard players operation @s storm_posz = @r random
execute as @e[name=storm] if entity @s[scores={wt_done=40..40}] run scoreboard players operation @s storm_velx = @r random
execute as @e[name=storm] if entity @s[scores={wt_done=50..50}] run scoreboard players operation @s storm_velz = @r random
execute as @e[name=storm] if entity @s[scores={wt_done=60..60}] run scoreboard players operation @s storm_posx /= @s storm_inta
execute as @e[name=storm] if entity @s[scores={wt_done=70..70}] run scoreboard players operation @s storm_posz /= @s storm_inta
execute as @e[name=storm] if entity @s[scores={wt_done=80..80}] run scoreboard players operation @s storm_velx /= @s storm_intb
execute as @e[name=storm] if entity @s[scores={wt_done=90..90}] run scoreboard players operation @s storm_velz /= @s storm_intb
execute as @e[name=storm] if entity @s[scores={wt_done=90..}] run scoreboard players operation @s storm_posx -= @s storm_velx
execute as @e[name=storm] if entity @s[scores={wt_done=90..}] run scoreboard players operation @s storm_posz -= @s storm_velz
execute if entity @e[name=dmain,scores={storm_clk=1000..}] run scoreboard players set @e[name=dmain] storm_clk 0

# Distance Calculation
scoreboard players add @e[name=dmain] wt_effect_clock 1
execute as @e[name=dmain,scores={wt_effect_clock=2..}] as @e[name=storm] run scoreboard players set @a wt_distancea 0
execute as @e[name=dmain,scores={wt_effect_clock=2..}] as @e[name=storm] run scoreboard players set @a wt_distanceb 0
execute as @e[name=dmain,scores={wt_effect_clock=2..}] as @e[name=storm] run scoreboard players set @a wt_distancec 30000000
execute as @e[name=dmain,scores={wt_effect_clock=2..}] as @e[name=storm] run scoreboard players set @a wt 0
execute as @e[name=dmain,scores={wt_effect_clock=2..}] as @e[name=storm] run function world:weather/getpos
execute as @e[name=dmain,scores={wt_effect_clock=2..}] run function world:weather/effects
execute if entity @e[name=dmain,scores={wt_effect_clock=2..}] as @a run scoreboard players operation @s wt_distance = @s wt_distancec
execute as @e[name=dmain,scores={wt_effect_clock=2..}] run scoreboard players set @e[name=dmain] wt_effect_clock 0
scoreboard players add @a wt_tick 1
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=16360..}] if entity @s[scores={wt_tick=100..}] run weather clear
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=5360..16360}] if entity @s[scores={wt_tick=100..}] run weather rain
execute in minecraft:overworld as @a[distance=0..93750] at @s if entity @s[scores={wt_distance=0..5360}] if entity @s[scores={wt_tick=100..}] run weather thunder
execute in the_ways:the_ways as @a[distance=0..] if entity @s[scores={wt_tick=100..}] run weather thunder
execute in the_ways:the_ways as @a[distance=0..] if entity @s[scores={wt_tick=100..}] run time set 16000
execute as @a if entity @s[scores={wt_tick=100..}] run scoreboard players set @s wt_tick 0

# Lag Control
execute as @e[name=storm] if entity @s[scores={storm_posx=-1..1}] if entity @s[scores={storm_posz=-1..1}] run scoreboard players add @s wtdummytic 1
execute as @e[name=storm] if entity @s[scores={wtdummytic=100..}] run kill @s