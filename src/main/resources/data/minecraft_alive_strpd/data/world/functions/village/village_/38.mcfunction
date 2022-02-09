
execute at @s if entity @a[scores={vreg=20..20}] unless block ~ ~-1 ~ grass_path run fill ~ ~5 ~1 ~ ~-5 ~1 cobblestone replace
execute at @s if entity @a[scores={vreg=20..20}] if block ~ ~-1 ~ grass_path run fill ~ ~7 ~1 ~ ~4 ~1 cobblestone replace
execute at @s if entity @a[scores={vreg=39..39}] run tp @s ~-1 ~ ~