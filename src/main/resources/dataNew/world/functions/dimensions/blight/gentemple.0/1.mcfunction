



execute positioned 1000 100 0 run forceload add ~100 ~100 ~-100 ~-100
execute positioned 1000 55 0 run summon marker ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["witherrosetemple"],CustomName:'{"text":"witherrosetemple"}'}
execute positioned 1000 55 0 as @e[tag=!notick,type=marker,distance=0..300] at @s run spreadplayers ~ ~ 1 2 false @s