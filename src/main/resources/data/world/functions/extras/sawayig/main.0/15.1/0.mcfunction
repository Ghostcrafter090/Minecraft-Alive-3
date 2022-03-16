






data merge entity @s {Invulnerable:0b,NoAI:0b,ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1549878042,1100302255,-1575868462,-1626446246],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTVjMmVmYTQyMTgzMDAwODA2MjkwNjI4NGYwMzNmOTA1ZGVkNGVhMmM3ZWQ5YjZlMDk3YWMxZGUyNDI3ZTcwOCJ9fX0="}]}}}}]}
scoreboard players add @s healthb 1
effect give @s slowness 100000 10
effect give @s levitation 100000 0
effect clear @s regeneration