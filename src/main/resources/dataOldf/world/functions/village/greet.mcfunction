execute if entity @a[distance=0..6] unless score @p UUID0 = @s UUID0 unless score @p UUID1 = @s UUID1 unless score @p UUID2 = @s UUID2 unless score @p UUID3 = @s UUID3 run tellraw @a[distance=0..25] ["",{"text":"["},{"selector":"@s"},{"text":"] Hello "},{"selector":"@p"},{"text":"!"}]
execute if entity @a[distance=0..6] unless score @p UUID3 = @s UUID3 run scoreboard players operation @s UUID3 = @p UUID3
execute if entity @a[distance=0..6] unless score @p UUID2 = @s UUID2 run scoreboard players operation @s UUID2 = @p UUID2
execute if entity @a[distance=0..6] unless score @p UUID1 = @s UUID1 run scoreboard players operation @s UUID1 = @p UUID1
execute if entity @a[distance=0..6] unless score @p UUID0 = @s UUID0 run scoreboard players operation @s UUID0 = @p UUID0