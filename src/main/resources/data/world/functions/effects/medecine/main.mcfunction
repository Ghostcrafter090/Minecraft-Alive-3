# Define
scoreboard objectives add medApply dummy

# Main
execute as @e[type=!item,type=!marker,type=!minecart,type=!armor_stand,scores={DB=1..2}] unless entity @s[scores={medApply=1..}] run function world:effects/medecine/natural
scoreboard players remove @e[type=!item,type=!marker,type=!minecart,type=!armor_stand,scores={medApply=1..}] medApply 1

# Run
function world:effects/medecine/types/immune
function world:effects/medecine/types/sight
function world:effects/medecine/types/appetite
function world:effects/medecine/types/inflam
function world:effects/medecine/types/nausea
function world:effects/medecine/types/antidote
function world:effects/medecine/types/anticars