



scoreboard players add @e[tag=!notick,tag=dmain,type=marker] timeAlive 1
execute store result score @e[tag=!notick,tag=dmain,type=marker] dmainCount if entity @e[tag=!notick,tag=dmain,type=marker]
scoreboard players set @e[tag=!notick,tag=dmain,type=marker] killMe 0