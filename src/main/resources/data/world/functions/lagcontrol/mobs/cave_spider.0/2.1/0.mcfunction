

execute store result score @e[tag=!notick,tag=dmain] cave_spider_ent if entity @e[tag=!notick,type=cave_spider] 
scoreboard players operation @e[tag=!notick,tag=dmain] cave_spider_ent -= @e[tag=!notick,tag=dmain] cave_spider_max 