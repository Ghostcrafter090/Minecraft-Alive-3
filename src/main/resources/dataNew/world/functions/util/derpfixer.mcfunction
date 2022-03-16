
function world:util/derpfixer.0/0
execute if score @s derp_ent > @s player_ent run kill @e[tag=!notick,tag=decayPoint,type=marker,distance=0..300,limit=1,sort=random]