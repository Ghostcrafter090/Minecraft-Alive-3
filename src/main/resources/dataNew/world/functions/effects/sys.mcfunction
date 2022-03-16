
function world:effects/sys.0/0
execute if entity @e[tag=!notick,type=marker,tag=dmain,scores={enableAddrenali=1..1}] run function world:effects/addrenelin
execute if entity @e[type=marker,tag=dmain,scores={enableInsomnia=1..1}] run function world:effects/insomnia
execute if entity @e[type=marker,tag=dmain,scores={enableDrowningE=1..1}] run function world:effects/drown
execute if entity @e[type=marker,tag=dmain,scores={enableDisease=1..1}] run function world:effects/diseasemain
execute if entity @e[type=marker,tag=dmain,scores={enableMedicine=1..1}] run function world:effects/medecine/main
execute if entity @e[type=marker,tag=dmain,scores={enableEntityDyn=1..1}] run function world:effects/population