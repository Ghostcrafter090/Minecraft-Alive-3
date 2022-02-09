
forceload remove all
execute as @e[name=waygate] unless entity @s[scores={waygatedone=1..1}] run kill @s
say [Minecraft Alive] - Max Entity Count Reached. Resetting ForceLoadedChunks...