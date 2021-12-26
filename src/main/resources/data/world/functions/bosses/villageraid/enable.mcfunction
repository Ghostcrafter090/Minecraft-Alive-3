# Define
scoreboard objectives add stopEnable dummy

# Main
scoreboard players set @e[name=dmain,type=marker] raidsBool 1
scoreboard players set @e[name=dmain,type=marker] patrolsBool 1
execute as @e[type=pillager] at @s run summon lightning_bolt ~ ~10 ~
execute as @e[type=evoker] at @s run summon lightning_bolt ~ ~10 ~
execute as @e[type=witch] at @s run summon lightning_bolt ~ ~10 ~
execute as @e[type=vindicator] at @s run summon lightning_bolt ~ ~10 ~
execute as @a at @s positioned ~30 ~ ~ run playsound minecraft:event.raid.horn master @a ~ ~ ~ 9 0.1
execute as @a at @s positioned ~-30 ~ ~ run playsound minecraft:event.raid.horn master @a ~ ~ ~ 9 0.1
execute as @a at @s positioned ~ ~ ~30 run playsound minecraft:event.raid.horn master @a ~ ~ ~ 9 0.1
execute as @a at @s positioned ~ ~ ~-30 run playsound minecraft:event.raid.horn master @a ~ ~ ~ 9 0.1
scoreboard players set @e[name=dmain,type=marker] stopEnable 1

