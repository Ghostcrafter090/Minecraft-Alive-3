

execute as @e[tag=!notick,tag=kyaeffect] positioned ~1 ~1.65 ~-3 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=!notick,tag=kyaeffect] positioned ~-2 ~1.65 ~3 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=!notick,tag=kyaeffect] positioned ~1 ~1.65 ~3 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=!notick,tag=kyaeffect] positioned ~-2 ~1.65 ~-3 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=!notick,tag=kyaeffect] positioned ~2 ~1.65 ~-3 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=!notick,tag=kyaeffect] positioned ~-1 ~1.65 ~3 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=!notick,tag=kyaeffect] positioned ~2 ~1.65 ~3 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=!notick,tag=kyaeffect] positioned ~-1 ~1.65 ~-3 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=!notick,tag=kyaeffect] positioned ~-3 ~1.65 ~1 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=!notick,tag=kyaeffect] positioned ~3 ~1.65 ~-2 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=!notick,tag=kyaeffect] positioned ~3 ~1.65 ~1 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=!notick,tag=kyaeffect] positioned ~-3 ~1.65 ~-2 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=!notick,tag=kyaeffect] positioned ~-3 ~1.65 ~2 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=!notick,tag=kyaeffect] positioned ~3 ~1.65 ~-1 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=!notick,tag=kyaeffect] positioned ~3 ~1.65 ~2 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute as @e[tag=!notick,tag=kyaeffect] positioned ~-3 ~1.65 ~-1 if block ~ ~ ~ purple_candle run particle minecraft:enchant ~ ~ ~ 0 0 0 1 1 force @a
execute positioned ~-3 ~1.65 ~-5 if block ~ ~ ~ red_candle unless entity @e[tag=!notick,tag=line,tag=a] run summon marker ~ ~ ~ {Tags:['line','a']}
execute positioned ~4 ~1.65 ~-5 if block ~ ~ ~ red_candle unless entity @e[tag=!notick,tag=line,tag=b] run summon marker ~ ~ ~ {Tags:['line','b']}
execute positioned ~-3 ~1.65 ~5 if block ~ ~ ~ red_candle unless entity @e[tag=!notick,tag=line,tag=c] run summon marker ~ ~ ~ {Tags:['line','c']}
execute positioned ~4 ~1.65 ~5 if block ~ ~ ~ red_candle unless entity @e[tag=!notick,tag=line,tag=d] run summon marker ~ ~ ~ {Tags:['line','d']}
execute positioned ~-4 ~1.65 ~-5 if block ~ ~ ~ red_candle unless entity @e[tag=!notick,tag=line,tag=a] run summon marker ~ ~ ~ {Tags:['line','a']}
execute positioned ~3 ~1.65 ~-5 if block ~ ~ ~ red_candle unless entity @e[tag=!notick,tag=line,tag=b] run summon marker ~ ~ ~ {Tags:['line','b']}
execute positioned ~-4 ~1.65 ~5 if block ~ ~ ~ red_candle unless entity @e[tag=!notick,tag=line,tag=c] run summon marker ~ ~ ~ {Tags:['line','c']}
execute positioned ~3 ~1.65 ~5 if block ~ ~ ~ red_candle unless entity @e[tag=!notick,tag=line,tag=d] run summon marker ~ ~ ~ {Tags:['line','d']}
execute positioned ~-5 ~1.65 ~-3 if block ~ ~ ~ red_candle unless entity @e[tag=!notick,tag=line,tag=a] run summon marker ~ ~ ~ {Tags:['line','a']}
execute positioned ~-5 ~1.65 ~4 if block ~ ~ ~ red_candle unless entity @e[tag=!notick,tag=line,tag=b] run summon marker ~ ~ ~ {Tags:['line','b']}
execute positioned ~5 ~1.65 ~-3 if block ~ ~ ~ red_candle unless entity @e[tag=!notick,tag=line,tag=c] run summon marker ~ ~ ~ {Tags:['line','c']}
execute positioned ~5 ~1.65 ~4 if block ~ ~ ~ red_candle unless entity @e[tag=!notick,tag=line,tag=d] run summon marker ~ ~ ~ {Tags:['line','d']}
execute positioned ~-5 ~1.65 ~-4 if block ~ ~ ~ red_candle unless entity @e[tag=!notick,tag=line,tag=a] run summon marker ~ ~ ~ {Tags:['line','a']}
execute positioned ~-5 ~1.65 ~3 if block ~ ~ ~ red_candle unless entity @e[tag=!notick,tag=line,tag=b] run summon marker ~ ~ ~ {Tags:['line','b']}
execute positioned ~5 ~1.65 ~-4 if block ~ ~ ~ red_candle unless entity @e[tag=!notick,tag=line,tag=c] run summon marker ~ ~ ~ {Tags:['line','c']}
execute positioned ~5 ~1.65 ~3 if block ~ ~ ~ red_candle unless entity @e[tag=!notick,tag=line,tag=d] run summon marker ~ ~ ~ {Tags:['line','d']}
execute positioned ~1 ~1.65 ~-3 if block ~ ~ ~ purple_candle unless entity @e[tag=!notick,tag=effectline,tag=a] run summon marker ~ ~ ~ {Tags:['effectline','a']}
execute positioned ~-2 ~1.65 ~3 if block ~ ~ ~ purple_candle unless entity @e[tag=!notick,tag=effectline,tag=b] run summon marker ~ ~ ~ {Tags:['effectline','b']}
execute positioned ~1 ~1.65 ~3 if block ~ ~ ~ purple_candle unless entity @e[tag=!notick,tag=effectline,tag=c] run summon marker ~ ~ ~ {Tags:['effectline','c']}
execute positioned ~-2 ~1.65 ~-3 if block ~ ~ ~ purple_candle unless entity @e[tag=!notick,tag=effectline,tag=d] run summon marker ~ ~ ~ {Tags:['effectline','d']}
execute positioned ~2 ~1.65 ~-3 if block ~ ~ ~ purple_candle unless entity @e[tag=!notick,tag=effectline,tag=a] run summon marker ~ ~ ~ {Tags:['effectline','a']}
execute positioned ~-1 ~1.65 ~3 if block ~ ~ ~ purple_candle unless entity @e[tag=!notick,tag=effectline,tag=b] run summon marker ~ ~ ~ {Tags:['effectline','b']}
execute positioned ~2 ~1.65 ~3 if block ~ ~ ~ purple_candle unless entity @e[tag=!notick,tag=effectline,tag=c] run summon marker ~ ~ ~ {Tags:['effectline','c']}
execute positioned ~-1 ~1.65 ~-3 if block ~ ~ ~ purple_candle unless entity @e[tag=!notick,tag=effectline,tag=d] run summon marker ~ ~ ~ {Tags:['effectline','d']}
execute positioned ~-3 ~1.65 ~1 if block ~ ~ ~ purple_candle unless entity @e[tag=!notick,tag=effectline,tag=a] run summon marker ~ ~ ~ {Tags:['effectline','a']}
execute positioned ~3 ~1.65 ~-2 if block ~ ~ ~ purple_candle unless entity @e[tag=!notick,tag=effectline,tag=b] run summon marker ~ ~ ~ {Tags:['effectline','b']}
execute positioned ~3 ~1.65 ~1 if block ~ ~ ~ purple_candle unless entity @e[tag=!notick,tag=effectline,tag=c] run summon marker ~ ~ ~ {Tags:['effectline','c']}
execute positioned ~-3 ~1.65 ~-2 if block ~ ~ ~ purple_candle unless entity @e[tag=!notick,tag=effectline,tag=d] run summon marker ~ ~ ~ {Tags:['effectline','d']}
execute positioned ~-3 ~1.65 ~2 if block ~ ~ ~ purple_candle unless entity @e[tag=!notick,tag=effectline,tag=a] run summon marker ~ ~ ~ {Tags:['effectline','a']}
execute positioned ~3 ~1.65 ~-1 if block ~ ~ ~ purple_candle unless entity @e[tag=!notick,tag=effectline,tag=b] run summon marker ~ ~ ~ {Tags:['effectline','b']}
execute positioned ~3 ~1.65 ~2 if block ~ ~ ~ purple_candle unless entity @e[tag=!notick,tag=effectline,tag=c] run summon marker ~ ~ ~ {Tags:['effectline','c']}
execute positioned ~-3 ~1.65 ~-1 if block ~ ~ ~ purple_candle unless entity @e[tag=!notick,tag=effectline,tag=d] run summon marker ~ ~ ~ {Tags:['effectline','d']}