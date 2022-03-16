execute at @s store result score @s derp_ent if entity @e[name=derp,type=marker,distance=0..300]
execute as @s store result score @s player_ent if entity @a[distance=0..300]
execute if score @s derp_ent > @s player_ent run kill @e[name=derp,type=marker,distance=0..300,limit=1,sort=random]