
function world:lagcontrol/mobs/shu_bul_/0
execute unless entity @e[name=dmain,scores={shu_bul_max=0..}] run scoreboard players set @e[name=dmain] shu_bul_max 50 
function world:lagcontrol/mobs/shu_bul_/2
execute if entity @e[name=dmain,scores={shu_bul_ent=1..}] run function world:lagcontrol/mobs/shu_bul_/3