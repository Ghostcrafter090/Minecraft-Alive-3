
function world:lagcontrol/mobs/cod_/0
execute unless entity @e[name=dmain,scores={cod_max=0..}] run scoreboard players set @e[name=dmain] cod_max 50 
function world:lagcontrol/mobs/cod_/2
execute if entity @e[name=dmain,scores={cod_ent=1..}] run function world:lagcontrol/mobs/cod_/3