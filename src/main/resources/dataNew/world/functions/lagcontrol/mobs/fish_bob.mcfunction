
function world:lagcontrol/mobs/fish_bob.0/0
execute unless entity @e[tag=!notick,tag=dmain,scores={fish_bob_max=0..}] run scoreboard players set @e[tag=!notick,tag=dmain] fish_bob_max 50 
function world:lagcontrol/mobs/fish_bob.0/2
execute if entity @e[tag=dmain,scores={fish_bob_ent=1..}] run function world:lagcontrol/mobs/fish_bob.0/3