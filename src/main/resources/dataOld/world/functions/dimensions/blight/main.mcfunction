# execute as @a[limit=1,sort=random] at @s in mca:the_blight if entity @a[distance=0..3] run tag @s add inBlight
# execute as @a[limit=1,sort=random] at @s in mca:the_blight unless entity @a[distance=0..3] run tag @s remove inBlight
execute if entity @a[scores={dimension=14..14}] run function world:dimensions/blight/miniboss/main