
function world:lagcontrol/mobs/cod.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={cod_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] cod_max 50 
function world:lagcontrol/mobs/cod.0/2
execute if entity @e[tag=dmain,scores={cod_ent=1..}] run function world:lagcontrol/mobs/cod.0/3