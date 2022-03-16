


execute unless entity @e[tag=!notick,tag=dmain,scores={unload=1..1}] run forceload remove ~34 ~17 ~34 ~-17
execute unless entity @e[tag=!notick,tag=dmain,scores={unload=1..1}] run forceload remove ~-34 ~17 ~-34 ~-17
execute unless entity @e[tag=!notick,tag=dmain,scores={unload=1..1}] run forceload remove ~17 ~34 ~-17 ~34
execute unless entity @e[tag=!notick,tag=dmain,scores={unload=1..1}] run forceload remove ~17 ~-34 ~-17 ~-34
forceload add ~17 ~17 ~-17 ~-17