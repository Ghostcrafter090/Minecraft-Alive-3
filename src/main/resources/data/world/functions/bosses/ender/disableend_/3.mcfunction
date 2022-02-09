
tellraw @a ["",{"selector":"[@s]","color":"green","hoverEvent":{"action":"show_text","contents":"To be able to defeat the Ender Dragon, go to a village and talk to a curious trader."}},{"text":" *Psssst* Eye don't reccomend that!","color":"green","hoverEvent":{"action":"show_text","contents":"To be able to defeat the Ender Dragon, go to a village and talk to a curious trader."}}]
execute at @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 1 50 force
execute at @s run playsound minecraft:entity.ender_eye.death master @a ~ ~ ~ 1
execute at @s run give @p minecraft:ender_eye 1
execute at @s run kill @s