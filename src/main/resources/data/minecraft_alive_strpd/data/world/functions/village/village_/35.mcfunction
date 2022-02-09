
execute at @s if entity @a[scores={vreg=20..20}] unless block ~ ~-1 ~ grass_path run fill ~1 ~5 ~ ~1 ~-5 ~ cobblestone replace
execute at @s if entity @a[scores={vreg=20..20}] if block ~ ~-1 ~ grass_path run fill ~1 ~7 ~ ~1 ~4 ~ cobblestone replace
execute at @s if entity @a[scores={vreg=39..39}] run tp @s ~ ~ ~1