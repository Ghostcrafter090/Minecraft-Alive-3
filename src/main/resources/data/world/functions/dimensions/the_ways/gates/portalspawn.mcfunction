
function world:dimensions/the_ways/gates/portalspawn_/0
execute as @e[type=villager,sort=random,limit=1] at @s unless entity @e[name=waygate,type=marker,distance=0..350] run summon marker ~ 230 ~ {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,PersistenceRequired:1b,CustomName:'{"text":"waygate"}'}
execute as @e[name=waygate,type=marker,sort=random,limit=1] run function world:dimensions/the_ways/gates/portalspawn_/2