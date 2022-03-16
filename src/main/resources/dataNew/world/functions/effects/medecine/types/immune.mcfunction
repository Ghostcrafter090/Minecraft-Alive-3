
execute as @e[tag=!notick,type=!item,type=!marker,type=!minecart,type=!armor_stand,scores={DB=1..1}] if entity @s[nbt={ActiveEffects:[{Id:0b,Amplifier:0b}]}] run scoreboard players add @s DT 1
execute as @e[type=!item,type=!marker,type=!minecart,type=!armor_stand,scores={DB=2..2}] if entity @s[nbt={ActiveEffects:[{Id:0b,Amplifier:0b}]}] run scoreboard players remove @s DT 2
execute as @e[type=!item,type=!marker,type=!minecart,type=!armor_stand,scores={DB=1..1}] if entity @s[nbt={ActiveEffects:[{Id:0b,Amplifier:1b}]}] run scoreboard players add @s DT 4
execute as @e[type=!item,type=!marker,type=!minecart,type=!armor_stand,scores={DB=2..2}] if entity @s[nbt={ActiveEffects:[{Id:0b,Amplifier:1b}]}] run scoreboard players remove @s DT 4