
weather thunder 100000
execute as @a run function world:bosses/guardian/effects_/1
execute if entity @e[name=dmain,type=marker,scores={atic=15..15}] run function world:bosses/guardian/effects_/2
execute as @e[type=zombie,nbt={DrownedConversionTime:-1}] run data modify entity @s DrownedConversionTime set value 600
execute as @e[type=husk,nbt={DrownedConversionTime:-1}] run data modify entity @s DrownedConversionTime set value 600