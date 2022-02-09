
function world:bosses/guardian/main_/0
execute as @e[type=item,tag=water_key_shard] run function world:bosses/guardian/main_/1
execute as @e[type=item,tag=water_key_shard,scores={guardStartTic=1..}] run function world:bosses/guardian/main_/2
execute if entity @e[name=dmain,type=marker,scores={guardBool=1..1}] run function world:bosses/guardian/effects
execute as @e[type=item,tag=water_key_shard] run function world:bosses/guardian/main_/4
function world:bosses/guardian/main_/5
execute as @e[tag=water_key_spawn,type=marker,scores={timeAlive=10..}] run function world:bosses/guardian/main_/6
execute as @e[tag=water_key_spawn_site] run function world:bosses/guardian/main_/7
execute as @e[type=elder_guardian,tag=!vuln,tag=!elder] run function world:bosses/guardian/main_/8
execute as @e[type=elder_guardian,tag=vuln,tag=!vulnN] run function world:bosses/guardian/main_/9
execute as @a[nbt={SelectedItem:{id:"mca:water_key"}}] run function world:bosses/guardian/main_/10
scoreboard players set @e[name=dmain,type=marker] playerElderKills 0
execute as @a run scoreboard players operation @e[name=dmain,type=marker] playerElderKills += @a elderGuardKill 
execute as @e[name=dmain,type=marker] run function world:bosses/guardian/main_/13
execute as @e[type=guardian] at @s unless entity @e[type=elder_guardian,distance=0..200] run effect give @s wither 10 0