
execute unless score @s progScore = @s progScoreOld run advancement grant @s only world:root
execute if score @s progScore = @s progScoreOld run advancement revoke @s only world:root
execute at @s if entity @e[tag=!notick,tag=dmain,type=marker,scores={atic=10..11}] as @e[tag=!notick,type=villager,tag=curtrader,distance=0..100] run function world:bosses/book/util/traderai