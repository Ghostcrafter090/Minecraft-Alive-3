
scoreboard players add @e[name=dmain,type=marker] timeAlive 1
execute store result score @e[name=dmain,type=marker] dmainCount if entity @e[name=dmain,type=marker]
scoreboard players set @e[name=dmain,type=marker] killMe 0