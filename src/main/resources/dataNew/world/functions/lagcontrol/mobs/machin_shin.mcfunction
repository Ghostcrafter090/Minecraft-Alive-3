
function world:lagcontrol/mobs/machin_shin.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={machin_shin_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] machin_shin_max 20 
function world:lagcontrol/mobs/machin_shin.0/2
execute if entity @e[tag=dmain,scores={machin_shin_ent=1..}] run function world:lagcontrol/mobs/machin_shin.0/3