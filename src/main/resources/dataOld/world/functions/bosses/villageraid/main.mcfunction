# Define
scoreboard objectives add raidsBool dummy
scoreboard objectives add patrolsBool dummy
scoreboard objectives add gameruleWork dummy

# Gamerules
execute unless entity @e[name=dmain,type=marker,scores={raidsBool=0..1}] run scoreboard players set @e[name=dmain,type=marker] raidsBool 0
execute unless entity @e[name=dmain,type=marker,scores={patrolsBool=0..1}] run scoreboard players set @e[name=dmain,type=marker] patrolsBool 0
execute store result score @e[name=dmain,type=marker] raidsBool run gamerule doPatrolSpawning
execute unless score @e[name=dmain,type=marker,limit=1] gameruleWork = @e[name=dmain,type=marker,limit=1] raidsBool if entity @e[name=dmain,type=marker,scores={gameruleWork=1..1}] run gamerule doPatrolSpawning true
execute unless score @e[name=dmain,type=marker,limit=1] gameruleWork = @e[name=dmain,type=marker,limit=1] raidsBool if entity @e[name=dmain,type=marker,scores={gameruleWork=0..0}] run gamerule doPatrolSpawning false

# Main
execute as @a[nbt={SelectedItem:{id:"minecraft:totem_of_undying"}}] unless entity @e[name=dmain,type=marker,scores={stopEnable=1..1}] run function world:bosses/villageraid/enable
execute if entity @e[name=dmain,type=marker,scores={raidsBool=1..1}] as @e[type=ravager,tag=!changed] run data merge entity @s {Tags:["changed"],HandItems:[{id:"mca:water_key_shard",Count:1b,tag:{display:{Name:'{"text":"Water Key Shard","color":"dark_blue","bold":true,"italic":true}'},Enchantments:[{}]}},{}],HandDropChances:[1.000F,0.085F],ArmorItems:[{},{},{id:"minecraft:prismarine_crystals",Count:1b,tag:{display:{Name:'{"text":"Water Key Shard","color":"dark_blue","bold":true,"italic":true}',Lore:['{"text":"Use this to create the water key"}','{"text":"to fight the elder guardian"}']},HideFlags:7,Enchantments:[{id:"minecraft:respiration",lvl:1s},{id:"minecraft:aqua_affinity",lvl:1s},{id:"minecraft:depth_strider",lvl:1s},{id:"minecraft:frost_walker",lvl:1s},{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}},{}],ArmorDropChances:[0.085F,0.085F,1.000F,0.085F]}