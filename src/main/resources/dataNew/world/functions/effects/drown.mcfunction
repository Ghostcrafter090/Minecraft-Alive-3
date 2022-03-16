
execute as @a[scores={air=..5}] run function world:effects/drown.0/0
execute as @a[scores={air=..150}] run effect give @s nausea 10 10
execute as @a[scores={air=100..100}] run effect give @s blindness 1 10
execute as @a[scores={air=50..50}] run effect give @s blindness 1 10
execute as @a[scores={air=25..25}] run effect give @s blindness 1 10
execute as @a[scores={air=12..12}] run effect give @s blindness 1 10
execute as @a[scores={air=6..6}] run effect give @s blindness 1 10
execute as @a[scores={air=3..3}] run effect give @s blindness 1 10
execute as @a[scores={air=..2}] run effect give @s blindness 1 10
execute as @a[scores={air=25..25}] run scoreboard players remove @s stamina 4
execute as @a[scores={air=..5}] run function world:effects/drown.0/10