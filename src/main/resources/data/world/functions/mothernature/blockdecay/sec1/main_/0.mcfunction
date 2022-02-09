
execute if block ~ ~-1 ~ mca:loosegravel run function world:mothernature/blockdecay/base/basic
execute if block ~ ~-1 ~ mca:finesand run function world:mothernature/blockdecay/base/basic
execute if block ~ ~-1 ~ mca:redfinesand run function world:mothernature/blockdecay/base/basic
execute if block ~ ~-1 ~ mca:humus run function world:mothernature/blockdecay/base/basic
fill ~ ~-1 ~ ~ ~-1 ~ dirt replace coarse_dirt
fill ~ ~-1 ~ ~ ~-1 ~ mca:loosegravel replace stone
fill ~ ~-1 ~ ~ ~-1 ~ mca:finesand replace gravel
fill ~ ~-1 ~ ~ ~-1 ~ mca:humus replace mca:finesand
fill ~ ~-1 ~ ~ ~-1 ~ dirt replace mca:humus