
execute unless score @s progScore = @s progScoreOld run advancement grant @s only world:root
execute if score @s progScore = @s progScoreOld run advancement revoke @s only world:root
execute at @s if entity @e[name=dmain,type=marker,scores={atic=10..11}] as @e[type=villager,tag=curtrader,distance=0..100] run function world:bosses/book/util/traderai