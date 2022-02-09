
execute if entity @s[scores={ms_done=1..1}] run scoreboard players set @s machin_shin_inta 2291
execute if entity @s[scores={ms_done=1..1}] run scoreboard players set @s machin_shin_intb 21474836
execute if entity @s[scores={ms_done=2..2}] run scoreboard players operation @s machin_shin_posx = @r random
execute if entity @s[scores={ms_done=3..3}] run scoreboard players operation @s machin_shin_posz = @r random
execute if entity @s[scores={ms_done=4..4}] run scoreboard players operation @s machin_shin_velx = @r random
execute if entity @s[scores={ms_done=5..5}] run scoreboard players operation @s machin_shin_velz = @r random
execute if entity @s[scores={ms_done=6..6}] run scoreboard players operation @s machin_shin_posx /= @s machin_shin_inta
execute if entity @s[scores={ms_done=7..7}] run scoreboard players operation @s machin_shin_posz /= @s machin_shin_inta
execute if entity @s[scores={ms_done=8..8}] run scoreboard players operation @s machin_shin_velx /= @s machin_shin_intb
execute if entity @s[scores={ms_done=9..9}] run scoreboard players operation @s machin_shin_velz /= @s machin_shin_intb
execute if entity @s[scores={ms_done=10..}] run scoreboard players operation @s machin_shin_posx -= @s machin_shin_velx
execute if entity @s[scores={ms_done=10..}] run scoreboard players operation @s machin_shin_posz -= @s machin_shin_velz