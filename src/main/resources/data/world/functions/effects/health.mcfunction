
function world:effects/health.0/0
execute as @a[scores={health=0..2}] run function world:effects/health.0/1
execute as @a[scores={health=..5}] run scoreboard players remove @s stamina 1
execute as @a[scores={health=..3}] run scoreboard players remove @s stamina 1
execute as @a[scores={health=..2}] run scoreboard players remove @s stamina 1
execute as @a[scores={health=..1}] run scoreboard players remove @s stamina 1