




execute if entity @e[tag=!notick,type=drowned,limit=3,sort=random] run function world:effects/disease/spreaders/drowned
execute if entity @e[tag=!notick,type=husk,limit=3,sort=random] run function world:effects/disease/spreaders/husk
execute if entity @e[tag=!notick,type=wither,limit=3,sort=random] run function world:effects/disease/spreaders/wither
execute if entity @e[tag=!notick,type=wither_skull,limit=3,sort=random] run function world:effects/disease/spreaders/witherskull