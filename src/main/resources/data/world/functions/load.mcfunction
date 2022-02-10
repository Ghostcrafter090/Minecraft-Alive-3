
function world:load_/0
execute in mca:the_blight positioned 1000 100 0 run forceload add ~ ~ ~ ~
execute unless entity @e[tag=witherrosetemple,type=marker] run function world:load_/2