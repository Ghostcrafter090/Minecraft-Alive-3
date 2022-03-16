
execute if entity @e[tag=!notick,type=marker,tag=dmain,scores={enableEndCrysta=1..1}] run function world:extras/phantoms/crystal
execute if entity @e[type=marker,tag=dmain,scores={enableAdvancedC=1..1}] as @e[type=creeper,sort=random,limit=1] run function world:extras/creeper/fire
execute if entity @e[type=marker,tag=dmain,scores={enableAdvancedE=1..1}] run function world:extras/enderman/endereffect
execute if entity @e[type=marker,tag=dmain,scores={enableCubeEntit=1..1}] run function world:tickers/extras.0/3
execute if entity @e[type=marker,tag=dmain,scores={enableMyddraal=1..1}] run function world:extras/myddraal/main
function world:tickers/extras.0/5