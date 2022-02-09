
execute at @s unless entity @e[tag=rot0,distance=0..3] run summon marker ~ ~ ~ {Tags:['rot0']}
execute at @s facing entity @e[tag=Myddraal] feet run tp @e[tag=rot0] ~ ~ ~ ~ ~