function listutils.private:setup/load
say Loaded Succesfully!
scoreboard players set @e[name=dmain] startworldclock 1
scoreboard players set @e[name=dmain] listindex -1
scoreboard players set @e[name=dmain] loadclock 0
execute in mca:the_blight positioned 1000 100 0 run forceload add ~ ~ ~ ~
execute unless entity @e[tag=witherrosetemple,type=marker] run scoreboard player set @a thirst 30
execute unless entity @e[tag=witherrosetemple,type=marker] run function world:dimensions/blight/gentemple