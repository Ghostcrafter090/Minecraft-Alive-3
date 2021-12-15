# Define
scoreboard objectives add randomuuida dummy
scoreboard objectives add randomuuidb dummy
scoreboard objectives add randomuuidc dummy
scoreboard objectives add randomuuidd dummy
scoreboard objectives add randomposx dummy
scoreboard objectives add randomposy dummy
scoreboard objectives add randomposz dummy
scoreboard objectives add random dummy


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




