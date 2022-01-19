# Define
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add UUID0 dummy
scoreboard objectives add UUID1 dummy
scoreboard objectives add UUID2 dummy
scoreboard objectives add UUID3 dummy

# Main
execute as @e[type=!item,sort=random,limit=50] unless entity @s[type=marker] store result score @s PosX run data get entity @s Pos[0]
execute as @e[type=!item,sort=random,limit=50] unless entity @s[type=marker] store result score @s PosY run data get entity @s Pos[1]
execute as @e[type=!item,sort=random,limit=50] unless entity @s[type=marker] store result score @s PosZ run data get entity @s Pos[2]
execute as @a unless entity @s[scores={UUID0=0..}] unless entity @s[scores={UUID0=..0}] store result score @s UUID0 run data get entity @s UUID[0]
execute as @a unless entity @s[scores={UUID1=0..}] unless entity @s[scores={UUID1=..0}] store result score @s UUID1 run data get entity @s UUID[1]
execute as @a unless entity @s[scores={UUID2=0..}] unless entity @s[scores={UUID2=..0}] store result score @s UUID2 run data get entity @s UUID[2]
execute as @a unless entity @s[scores={UUID3=0..}] unless entity @s[scores={UUID3=..0}] store result score @s UUID3 run data get entity @s UUID[3]


