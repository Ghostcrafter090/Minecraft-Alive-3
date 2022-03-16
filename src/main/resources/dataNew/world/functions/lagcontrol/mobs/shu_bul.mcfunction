
function world:lagcontrol/mobs/shu_bul.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={shu_bul_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] shu_bul_max 50 
function world:lagcontrol/mobs/shu_bul.0/2
execute if entity @e[tag=dmain,scores={shu_bul_ent=1..}] run function world:lagcontrol/mobs/shu_bul.0/3