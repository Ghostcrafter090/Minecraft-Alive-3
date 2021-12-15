# Define
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy


# Main
execute as @e[type=!item,sort=random,limit=50] unless entity @s[type=armor_stand] store result score @s PosX run data get entity @s Pos[0]
execute as @e[type=!item,sort=random,limit=50] unless entity @s[type=armor_stand] store result score @s PosY run data get entity @s Pos[1]
execute as @e[type=!item,sort=random,limit=50] unless entity @s[type=armor_stand] store result score @s PosZ run data get entity @s Pos[2]

