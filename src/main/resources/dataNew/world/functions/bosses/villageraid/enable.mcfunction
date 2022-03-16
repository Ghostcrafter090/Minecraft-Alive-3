
function world:bosses/villageraid/enable.0/0
execute as @e[tag=!notick,type=pillager] at @s run summon lightning_bolt ~ ~10 ~
execute as @e[type=evoker] at @s run summon lightning_bolt ~ ~10 ~
execute as @e[type=witch] at @s run summon lightning_bolt ~ ~10 ~
execute as @e[type=vindicator] at @s run summon lightning_bolt ~ ~10 ~
execute as @a run function world:bosses/villageraid/enable.0/5
function world:bosses/villageraid/enable.0/6