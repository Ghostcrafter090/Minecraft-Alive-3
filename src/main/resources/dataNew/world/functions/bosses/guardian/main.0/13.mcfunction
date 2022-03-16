



execute if score @s guardianCount = @s playerElderKills if entity @s[scores={playerElderKills=3..}] run give @r mca:fire_key_shard 1
execute if score @s guardianCount = @s playerElderKills if entity @s[scores={playerElderKills=3..}] run function world:bosses/guardian/reset