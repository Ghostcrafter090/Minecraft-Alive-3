# Define
scoreboard objectives add curTic dummy
scoreboard objectives add curCloseTic dummy

effect give @s slowness 2 255
scoreboard players add @s curTic 1
execute as @s at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~
execute as @s if entity @s[scores={curTic=100..100}] run say You! Player! Come over here!
execute as @s if entity @s[scores={curTic=200..}] at @s unless entity @a[distance=0..5] run say Come Closer!
execute as @s if entity @s[scores={curTic=200..}] at @s unless entity @a[distance=0..5] run scoreboard players set @s curTic 100
execute as @s if entity @s[scores={curTic=200..}] at @s if entity @a[distance=0..5] run scoreboard players add @s curCloseTic 1
execute as @s if entity @s[scores={curCloseTic=100..100}] run say You should buy what trades I have to offer fine sir!
execute as @s if entity @s[scores={curCloseTic=150..150}] run say For I have a magic book!
execute as @s if entity @s[scores={curCloseTic=200..200}] run say Well...
execute as @s if entity @s[scores={curCloseTic=350..350}] run say At least the pages of it...
execute as @s if entity @s[scores={curCloseTic=400..400}] run say But thats besides the point!
execute as @s if entity @s[scores={curCloseTic=450..450}] run say Combine it with leather in a book crafting recipe and you will have yourself a Spell Book!!!
execute as @s if entity @s[scores={curCloseTic=460..900}] as @e[type=villager,distance=0..20,tag=!curtrader] at @s facing entity @e[tag=curtrader,limit=1,sort=nearest,scores={curCloseTic=460..900}] eyes run tp @s ~ ~ ~ ~ ~
execute as @s if entity @s[scores={curCloseTic=460..900}] as @e[type=villager,distance=0..20,tag=!curtrader] at @s facing entity @e[tag=curtrader,limit=1,sort=nearest,scores={curCloseTic=460..900}] eyes positioned ~ ~2 ~ run particle minecraft:angry_villager ~ ~ ~ 0.5 0.5 0.5 0.1 1 force
execute as @s if entity @s[scores={curCloseTic=460..460}] as @e[type=villager,distance=0..20,tag=!curtrader] run say WHAT???
execute as @s if entity @s[scores={curCloseTic=700..700}] run say Mag... I mean, what I'm talking about... it's not exactly... excepted in these parts.
execute as @s if entity @s[scores={curCloseTic=800..800}] run say People! PEOPLE! It's alright! I am just your local trader! Nothing more!
execute as @s if entity @s[scores={curCloseTic=1000..1000}] run say *few*... appolagies, I nearely got caught there, anyways! Do you wish to buy from me? or not!?
execute as @s if entity @s[scores={curCloseTic=1200..1200}] run tag @s add foundplayer