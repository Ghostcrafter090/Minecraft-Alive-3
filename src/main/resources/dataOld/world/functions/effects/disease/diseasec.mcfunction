execute if entity @a[scores={reguz=4..4}] if entity @e[type=drowned,limit=3,sort=random] run function world:effects/disease/spreaders/drowned
execute if entity @a[scores={reguz=4..4}] if entity @e[type=husk,limit=3,sort=random] run function world:effects/disease/spreaders/husk
execute if entity @a[scores={reguz=4..4}] if entity @e[type=wither,limit=3,sort=random] run function world:effects/disease/spreaders/wither
execute if entity @a[scores={reguz=4..4}] if entity @e[type=wither_skull,limit=3,sort=random] run function world:effects/disease/spreaders/witherskull