


















execute at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={curTic=100..100}] run say You! Player! Come over here!
execute if entity @s[scores={curTic=200..}] at @s unless entity @a[distance=0..5] run say Come Closer!
execute if entity @s[scores={curTic=200..}] at @s unless entity @a[distance=0..5] run scoreboard players set @s curTic 100
execute if entity @s[scores={curTic=200..}] at @s if entity @a[distance=0..5] run scoreboard players add @s curCloseTic 1
execute if entity @s[scores={curCloseTic=100..100}] run say You should buy what trades I have to offer fine sir!
execute if entity @s[scores={curCloseTic=150..150}] run say For I have a magic book!
execute if entity @s[scores={curCloseTic=200..200}] run say Well...
execute if entity @s[scores={curCloseTic=350..350}] run say At least the pages of it...
execute if entity @s[scores={curCloseTic=400..400}] run say But thats besides the point!
execute if entity @s[scores={curCloseTic=450..450}] run say Combine it with leather in a book crafting recipe and you will have yourself a Spell Book!!!
execute if entity @s[scores={curCloseTic=460..900}] as @e[tag=!notick,type=villager,distance=0..20,tag=!curtrader] at @s facing entity @e[tag=!notick,tag=curtrader,limit=1,sort=nearest,scores={curCloseTic=460..900}] eyes run tp @s ~ ~ ~ ~ ~
execute if entity @s[scores={curCloseTic=460..900}] as @e[tag=!notick,type=villager,distance=0..20,tag=!curtrader] at @s facing entity @e[tag=!notick,tag=curtrader,limit=1,sort=nearest,scores={curCloseTic=460..900}] eyes positioned ~ ~2 ~ run particle minecraft:angry_villager ~ ~ ~ 0.5 0.5 0.5 0.1 1 force
execute if entity @s[scores={curCloseTic=460..460}] as @e[tag=!notick,type=villager,distance=0..20,tag=!curtrader] run say WHAT???
execute if entity @s[scores={curCloseTic=700..700}] run say Mag... I mean, what I'm talking about... it's not exactly... excepted in these parts.
execute if entity @s[scores={curCloseTic=800..800}] run say People! PEOPLE! It's alright! I am just your local trader! Nothing more!
execute if entity @s[scores={curCloseTic=1000..1000}] run say *few*... appolagies, I nearely got caught there, anyways! Do you wish to buy from me? or not!?
execute if entity @s[scores={curCloseTic=1200..1200}] run tag @s add foundplayer