
function world:lagcontrol/mobs/moria_/0
execute unless entity @e[name=dmain,scores={moria_max=0..}] run scoreboard players set @e[name=dmain] moria_max 10
function world:lagcontrol/mobs/moria_/2
execute if entity @e[name=dmain,scores={moria_ent=1..}] run function world:lagcontrol/mobs/moria_/3