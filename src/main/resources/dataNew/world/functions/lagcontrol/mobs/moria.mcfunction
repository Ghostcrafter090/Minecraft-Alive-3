
function world:lagcontrol/mobs/moria.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={moria_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] moria_max 10
function world:lagcontrol/mobs/moria.0/2
execute if entity @e[tag=dmain,scores={moria_ent=1..}] run function world:lagcontrol/mobs/moria.0/3