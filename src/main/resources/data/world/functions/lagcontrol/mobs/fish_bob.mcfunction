
function world:lagcontrol/mobs/fish_bob_/0
execute unless entity @e[name=dmain,scores={fish_bob_max=0..}] run scoreboard players set @e[name=dmain] fish_bob_max 50 
function world:lagcontrol/mobs/fish_bob_/2
execute if entity @e[name=dmain,scores={fish_bob_ent=1..}] run function world:lagcontrol/mobs/fish_bob_/3