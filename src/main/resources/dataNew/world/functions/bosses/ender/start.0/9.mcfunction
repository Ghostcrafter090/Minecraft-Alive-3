








execute at @s if entity @e[tag=!notick,tag=line,tag=a,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=b,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=c,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=d,distance=0..0.5] run scoreboard players add @s enderStartTic 1
execute at @s if entity @e[tag=!notick,tag=line,tag=a,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=b,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=c,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=d,distance=0..0.5] if entity @s[scores={enderStartTic=0..10}] run playsound minecraft:entity.enderman.stare master @a ~ ~ ~ 25 0.1
execute at @s if entity @e[tag=!notick,tag=line,tag=a,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=b,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=c,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=d,distance=0..0.5] as @e[tag=!notick,tag=effectend] run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force
execute at @s as @e[tag=!notick,tag=!effectend,limit=1,sort=random] if entity @e[tag=!notick,tag=line,tag=a,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=b,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=c,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=d,distance=0..0.5] run tag @s add effectend
execute at @s if entity @e[tag=!notick,tag=line,tag=a,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=b,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=c,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=d,distance=0..0.5] run particle minecraft:dripping_obsidian_tear ~ ~ ~ 0 20 0 0 500 force
execute at @s if entity @e[tag=!notick,tag=line,tag=a,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=b,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=c,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=d,distance=0..0.5] if entity @e[tag=!notick,tag=dmain,type=marker,scores={atic=1..1}] run summon lightning_bolt ~ ~-40 ~
execute at @s if entity @e[tag=!notick,tag=line,tag=a,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=b,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=c,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=d,distance=0..0.5] run particle minecraft:enchant ~ ~ ~ 1 10 1 0.1 10 force
execute at @s if entity @e[tag=!notick,tag=line,tag=a,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=b,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=c,distance=0..0.5] if entity @e[tag=!notick,tag=line,tag=d,distance=0..0.5] run particle minecraft:portal ~ ~ ~ 1 10 1 0.1 10 force