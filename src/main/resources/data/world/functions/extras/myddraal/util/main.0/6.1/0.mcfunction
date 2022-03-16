

execute unless entity @e[tag=!notick,tag=rot0,distance=0..3] run summon marker ~ ~ ~ {Tags:['rot0']}
execute facing entity @e[tag=!notick,tag=Myddraal] feet run tp @e[tag=!notick,tag=rot0] ~ ~ ~ ~ ~