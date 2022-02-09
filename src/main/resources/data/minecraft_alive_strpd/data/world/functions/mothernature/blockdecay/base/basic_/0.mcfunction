
execute if block ~ ~-2 ~ gravel run fill ~ ~-1 ~ ~ ~-1 ~ air replace mca:loose_gravel
execute if block ~ ~-2 ~ sand run fill ~ ~-1 ~ ~ ~-1 ~ air replace mca:fine_sand
execute if block ~ ~-2 ~ dirt run fill ~ ~-1 ~ ~ ~-1 ~ air replace mca:humus
execute if block ~ ~-2 ~ mca:red_fine_sand run fill ~ ~-2 ~ ~ ~-2 ~ air replace mca:red_fine_sand
execute if block ~ ~-1 ~ mca:loose_gravel if block ~ ~-2 ~ grass_block run fill ~ ~-1 ~ ~ ~-1 ~ mca:fine_sand replace mca:loose_gravel
execute if block ~ ~-1 ~ mca:fine_sand if block ~ ~-2 ~ grass_block run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace mca:fine_sand
execute if block ~ ~-1 ~ mca:red_fine_sand if block ~ ~-2 ~ grass_block run fill ~ ~-1 ~ ~ ~-1 ~ mca:fine_sand replace mca:red_fine_sand
execute if block ~ ~-1 ~ mca:humus if block ~ ~-2 ~ grass_block run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace mca:humus
execute if block ~ ~-1 ~ mca:loose_gravel if block ~ ~-2 ~ dirt run fill ~ ~-1 ~ ~ ~-1 ~ mca:fine_sand replace mca:loose_gravel
execute if block ~ ~-1 ~ mca:fine_sand if block ~ ~-2 ~ dirt run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace mca:fine_sand
execute if block ~ ~-1 ~ mca:red_fine_sand if block ~ ~-2 ~ dirt run fill ~ ~-1 ~ ~ ~-1 ~ mca:fine_sand replace mca:red_fine_sand
execute if block ~ ~-1 ~ mca:humus if block ~ ~-2 ~ dirt run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace mca:humus
execute if block ~ ~-1 ~ mca:loose_gravel if block ~ ~-2 ~ coarse_dirt run fill ~ ~-1 ~ ~ ~-1 ~ mca:fine_sand replace mca:loose_gravel
execute if block ~ ~-1 ~ mca:fine_sand if block ~ ~-2 ~ coarse_dirt run fill ~ ~-1 ~ ~ ~-1 ~ coarse_dirt replace mca:fine_sand
execute if block ~ ~-1 ~ mca:red_fine_sand if block ~ ~-2 ~ coarse_dirt run fill ~ ~-1 ~ ~ ~-1 ~ mca:fine_sand replace mca:red_fine_sand
execute if block ~ ~-1 ~ mca:humus if block ~ ~-2 ~ coarse_dirt run fill ~ ~-1 ~ ~ ~-1 ~ coarse_dirt replace mca:humus