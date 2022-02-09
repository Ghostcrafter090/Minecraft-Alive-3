
function world:lagcontrol/mobs/vex_/0
execute unless entity @e[name=dmain,scores={vex_max=0..}] run scoreboard players set @e[name=dmain] vex_max 35
function world:lagcontrol/mobs/vex_/2
execute if entity @e[name=dmain,scores={vex_ent=1..}] run function world:lagcontrol/mobs/vex_/3