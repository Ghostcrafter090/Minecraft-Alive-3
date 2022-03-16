
execute if block ~ ~-2 ~ gravel run fill ~ ~-1 ~ ~ ~-1 ~ air replace mca:loosegravel
execute if block ~ ~-2 ~ sand run fill ~ ~-1 ~ ~ ~-1 ~ air replace mca:finesand
execute if block ~ ~-2 ~ dirt run fill ~ ~-1 ~ ~ ~-1 ~ air replace mca:humus
execute if block ~ ~-2 ~ mca:redfinesand run fill ~ ~-2 ~ ~ ~-2 ~ air replace mca:redfinesand
execute if block ~ ~-1 ~ mca:loosegravel if block ~ ~-2 ~ grass_block run fill ~ ~-1 ~ ~ ~-1 ~ mca:finesand replace mca:loosegravel
execute if block ~ ~-1 ~ mca:finesand if block ~ ~-2 ~ grass_block run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace mca:finesand
execute if block ~ ~-1 ~ mca:redfinesand if block ~ ~-2 ~ grass_block run fill ~ ~-1 ~ ~ ~-1 ~ mca:finesand replace mca:redfinesand
execute if block ~ ~-1 ~ mca:humus if block ~ ~-2 ~ grass_block run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace mca:humus
execute if block ~ ~-1 ~ mca:loosegravel if block ~ ~-2 ~ dirt run fill ~ ~-1 ~ ~ ~-1 ~ mca:finesand replace mca:loosegravel
execute if block ~ ~-1 ~ mca:finesand if block ~ ~-2 ~ dirt run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace mca:finesand
execute if block ~ ~-1 ~ mca:redfinesand if block ~ ~-2 ~ dirt run fill ~ ~-1 ~ ~ ~-1 ~ mca:finesand replace mca:redfinesand
execute if block ~ ~-1 ~ mca:humus if block ~ ~-2 ~ dirt run fill ~ ~-1 ~ ~ ~-1 ~ dirt replace mca:humus
execute if block ~ ~-1 ~ mca:loosegravel if block ~ ~-2 ~ coarse_dirt run fill ~ ~-1 ~ ~ ~-1 ~ mca:finesand replace mca:loosegravel
execute if block ~ ~-1 ~ mca:finesand if block ~ ~-2 ~ coarse_dirt run fill ~ ~-1 ~ ~ ~-1 ~ coarse_dirt replace mca:finesand
execute if block ~ ~-1 ~ mca:redfinesand if block ~ ~-2 ~ coarse_dirt run fill ~ ~-1 ~ ~ ~-1 ~ mca:finesand replace mca:redfinesand
execute if block ~ ~-1 ~ mca:humus if block ~ ~-2 ~ coarse_dirt run fill ~ ~-1 ~ ~ ~-1 ~ coarse_dirt replace mca:humus