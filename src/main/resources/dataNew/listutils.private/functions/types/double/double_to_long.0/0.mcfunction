




data modify entity @s OwnerUUIDMost set from storage listutils.private:types TypeData
data modify storage listutils.private:types TypeData set from entity @s OwnerUUIDMost
function listutils.private:types/long/split_long