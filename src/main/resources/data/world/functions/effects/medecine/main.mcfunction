
scoreboard objectives add medApply dummy
execute as @e[type=!item,type=!marker,type=!minecart,type=!armor_stand,scores={DB=1..2}] unless entity @s[scores={medApply=1..}] run function world:effects/medecine/natural
function world:effects/medecine/main_/2