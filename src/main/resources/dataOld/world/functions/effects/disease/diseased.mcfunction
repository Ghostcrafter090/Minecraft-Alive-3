execute if entity @a[scores={reguz=4..4}] if entity @e[type=wither_skeleton,limit=3,sort=random] run function world:effects/disease/spreaders/witherskele
execute if entity @a[scores={reguz=4..4}] if entity @e[type=piglin,limit=3,sort=random] run function world:effects/disease/spreaders/zombiepig
execute if entity @a[scores={reguz=4..4}] if entity @e[type=zombie_villager,limit=3,sort=random] run function world:effects/disease/spreaders/zombievill

scoreboard objectives add GT dummy
execute as @a at @s as @e[distance=0..80,type=!item,type=!armor_stand,tag=!notick,type=!falling_block,type=!marker,type=!boat,type=!minecart,type=!experience_orb] at @s if entity @e[type=!item,type=!armor_stand,type=!falling_block,type=!marker,type=!boat,type=!minecart,type=!experience_orb,distance=1..2,sort=nearest,limit=1] run scoreboard players operation @s GT += @e[name=dmain,type=marker] blockta
execute as @a at @s as @e[distance=0..80,scores={GT=10000..}] run data merge entity @s {InLove:600}
execute as @a at @s as @e[distance=0..80,scores={GT=10001..}] run scoreboard players set @s GT 9000