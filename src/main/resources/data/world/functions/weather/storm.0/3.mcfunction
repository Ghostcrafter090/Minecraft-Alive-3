
execute if entity @s[scores={wt_done=10..10}] run function world:weather/storm.0/3.1/0
execute if entity @s[scores={wt_done=20..20}] run scoreboard players operation @s storm_posx = @r random
execute if entity @s[scores={wt_done=30..30}] run scoreboard players operation @s storm_posz = @r random
execute if entity @s[scores={wt_done=40..40}] run scoreboard players operation @s storm_velx = @r random
execute if entity @s[scores={wt_done=50..50}] run scoreboard players operation @s storm_velz = @r random
execute if entity @s[scores={wt_done=60..60}] run scoreboard players operation @s storm_posx /= @s storm_inta
execute if entity @s[scores={wt_done=70..70}] run scoreboard players operation @s storm_posz /= @s storm_inta
execute if entity @s[scores={wt_done=80..80}] run scoreboard players operation @s storm_velx /= @s storm_intb
execute if entity @s[scores={wt_done=90..90}] run scoreboard players operation @s storm_velz /= @s storm_intb
execute if entity @s[scores={wt_done=90..}] run function world:weather/storm.0/3.1/9