
scoreboard objectives add evoker_fangs_ent dummy 
scoreboard objectives add evoker_fangs_max dummy 
execute unless entity @e[name=dmain,scores={evoker_fangs_max=0..}] run scoreboard players set @e[name=dmain] evoker_fangs_max 50 
execute store result score @e[name=dmain] evoker_fangs_ent if entity @e[type=evoker_fangs] 
scoreboard players operation @e[name=dmain] evoker_fangs_ent -= @e[name=dmain] evoker_fangs_max 
execute if entity @e[name=dmain,scores={evoker_fangs_ent=1..}] run kill @e[type=evoker_fangs,limit=20,sort=random] 
execute if entity @e[name=dmain,scores={evoker_fangs_ent=1..}] run say [Minecraft Alive] - Max evoker_fangs detected. Clearing... 