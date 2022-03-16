# Define
scoreboard objectives add blocktd dummy

# Config
gamerule commandBlockOutput false

# Addrenelin
execute if entity @e[type=marker,name=dmain,scores={enableAddrenali=1..1}] run function world:effects/addrenelin

# Insomnia
execute if entity @e[type=marker,name=dmain,scores={enableInsomnia=1..1}] run function world:effects/insomnia

# Drowning
execute if entity @e[type=marker,name=dmain,scores={enableDrowningE=1..1}] run function world:effects/drown

# Disease
execute if entity @e[type=marker,name=dmain,scores={enableDisease=1..1}] run function world:effects/diseasemain

# Medicine
execute if entity @e[type=marker,name=dmain,scores={enableMedicine=1..1}] run function world:effects/medecine/main

# Extras
# execute as @e[type=villager] at @s if entity @a[distance=0..6] at @s run say Hello !

# Populations
execute if entity @e[type=marker,name=dmain,scores={enableEntityDyn=1..1}] run function world:effects/population
