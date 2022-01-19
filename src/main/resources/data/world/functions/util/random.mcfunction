# Define
scoreboard objectives add randomuuida dummy
scoreboard objectives add randomuuidb dummy
scoreboard objectives add randomuuidc dummy
scoreboard objectives add randomuuidd dummy
scoreboard objectives add randomposx dummy
scoreboard objectives add randomposy dummy
scoreboard objectives add randomposz dummy
scoreboard objectives add random dummy
scoreboard objectives add random10 dummy
scoreboard objectives add random50 dummy
scoreboard objectives add random100 dummy
scoreboard objectives add randMultVal dummy


# Main
execute as @e[limit=1,sort=random] store result score @a randomuuida run data get entity @s UUID[0] 0.0001
execute as @e[limit=1,sort=random] store result score @a randomuuidb run data get entity @s UUID[1] 0.0001
execute as @e[limit=1,sort=random] store result score @a randomuuidc run data get entity @s UUID[2] 0.0001
execute as @e[limit=1,sort=random] store result score @a randomuuidd run data get entity @s UUID[3] 0.0001
execute as @e[limit=1,sort=random] store result score @a randomposx run data get entity @s UUID[0]
execute as @e[limit=1,sort=random] store result score @a randomposy run data get entity @s UUID[1]
execute as @e[limit=1,sort=random] store result score @a randomposz run data get entity @s UUID[2]
scoreboard players operation @a random = @a randomuuida
scoreboard players operation @a random *= @a randomuuidb
scoreboard players operation @a random *= @a randomuuidc
scoreboard players operation @a random *= @a randomuuidd
scoreboard players operation @a random *= @a randomposx
scoreboard players operation @a random *= @a randomposy
scoreboard players operation @a random *= @a randomposz
execute as @a run scoreboard players operation @s random10 = @r random
execute as @a run scoreboard players operation @s random50 = @r random
execute as @a run scoreboard players operation @s random100 = @r random
scoreboard players set @e[name=dmain,type=marker] randMultVal 10
execute as @a run scoreboard players operation @s random10 %= @e[name=dmain,type=marker] randMultVal
scoreboard players set @e[name=dmain,type=marker] randMultVal 50
execute as @a run scoreboard players operation @s random50 %= @e[name=dmain,type=marker] randMultVal
scoreboard players set @e[name=dmain,type=marker] randMultVal 100
execute as @a run scoreboard players operation @s random100 %= @e[name=dmain,type=marker] randMultVal
