# Define
scoreboard objectives add ambTic dummy

# Main
scoreboard players add @e[name=dmain,type=marker] ambTic 1
execute as @e[name=dmain,type=marker] if score @s ambTic > @s blockta run function world:ambience/main
execute as @e[name=dmain,type=marker] if score @s ambTic > @s blockta run scoreboard players set @s ambTic 0