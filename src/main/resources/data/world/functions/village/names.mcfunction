
function world:village/pillager/pillagertag
execute as @e[type=villager,tag=!named,limit=1,sort=random] run function world:village/setname
execute as @e[tag=pillager,tag=!named,limit=1,sort=random] run function world:village/pillager/setname
execute as @e[type=piglin,tag=!named,limit=1,sort=random] run function world:village/piglin/setname
execute as @e[type=villager,sort=random,limit=1] at @s run function world:village/greet