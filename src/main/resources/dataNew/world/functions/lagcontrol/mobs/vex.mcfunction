
function world:lagcontrol/mobs/vex.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={vex_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] vex_max 35
function world:lagcontrol/mobs/vex.0/2
execute if entity @e[tag=dmain,scores={vex_ent=1..}] run function world:lagcontrol/mobs/vex.0/3