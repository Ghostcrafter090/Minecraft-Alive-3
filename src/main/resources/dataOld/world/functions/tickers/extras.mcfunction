execute if entity @e[type=marker,name=dmain,scores={enableEndCrysta=1..1}] run function world:extras/phantoms/crystal
execute if entity @e[type=marker,name=dmain,scores={enableAdvancedC=1..1}] as @e[type=creeper,sort=random,limit=1] run function world:extras/creeper/fire
execute if entity @e[type=marker,name=dmain,scores={enableAdvancedE=1..1}] run function world:extras/enderman/endereffect
execute if entity @e[type=marker,name=dmain,scores={enableCubeEntit=1..1}] run function world:extras/cubeentity/slime/grow
execute if entity @e[type=marker,name=dmain,scores={enableCubeEntit=1..1}] run function world:extras/cubeentity/magma/grow
execute if entity @e[type=marker,name=dmain,scores={enableMyddraal=1..1}] run function world:extras/myddraal/main
scoreboard players operation @e[name=dmain] extrastic += @e[name=dmain] blockta
scoreboard players set @e[name=dmain] extrastic 5