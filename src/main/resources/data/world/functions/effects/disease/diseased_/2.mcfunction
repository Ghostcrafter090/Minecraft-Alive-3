
execute at @s as @e[distance=0..80,type=!item,type=!armor_stand,type=!falling_block,type=!marker,type=!boat,type=!minecart,type=!experience_orb] at @s if entity @e[type=!item,type=!armor_stand,type=!falling_block,type=!marker,type=!boat,type=!minecart,type=!experience_orb,distance=1..2,sort=nearest,limit=1] run scoreboard players operation @s GT += @e[name=dmain,type=marker] blockta
execute at @s as @e[distance=0..80,scores={GT=10000..}] run data merge entity @s {InLove:600}
execute at @s as @e[distance=0..80,scores={GT=10001..}] run scoreboard players set @s GT 9000