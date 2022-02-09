
scoreboard objectives add spawnderpa dummy
execute as @e[name=derpa] at @s unless entity @e[tag=Myddraal,distance=0..160] positioned ~ 100 ~ if entity @s[dy=100] at @s run summon wither_skeleton ~ ~ ~ {Silent:1b,DeathTime:100,LeftHanded:1b,FallFlying:1b,CanPickUpLoot:1b,Tags:["Myddraal"],Passengers:[{id:"minecraft:armor_stand",CustomNameVisible:0b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,CustomName:'{"text":"deathdetect"}'}],CustomName:'{"text":"Myddraal","color":"dark_red","bold":true,"italic":true}',HandItems:[{id:"minecraft:stone_sword",Count:1b,tag:{display:{Name:'{"text":"Myddraal\'s Blade","color":"dark_red","bold":true,"italic":true}'},HideFlags:99,RepairCost:200,Damage:50,Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:smite",lvl:5s},{id:"minecraft:bane_of_arthropods",lvl:5s},{id:"minecraft:knockback",lvl:2s},{id:"minecraft:fire_aspect",lvl:3s},{id:"minecraft:looting",lvl:1s},{id:"minecraft:sweeping",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-10,Operation:0,UUID:[I;1384092371,1124091677,-1528610714,1240780396]}]}},{}],HandDropChances:[0.100F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{Name:'{"text":"Myddraal\'s Boots","color":"dark_red","bold":true,"italic":true}',Lore:['{"text":"The boots of a Myddraal."}'],color:6029312},HideFlags:99,RepairCost:200,Enchantments:[{id:"minecraft:feather_falling",lvl:3s},{id:"minecraft:thorns",lvl:1s},{id:"minecraft:depth_strider",lvl:5s},{id:"minecraft:frost_walker",lvl:5s},{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:soul_speed",lvl:5s}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{Name:'{"text":"Myddraal\'s Leggings","color":"dark_red","bold":true,"italic":true}',Lore:['{"text":"Legging\'s of a myddraal"}'],color:6029312},HideFlags:99,RepairCost:200,AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:-1,Operation:0,UUID:[I;-421018800,530858290,-1782332570,620723527]},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;-1872890144,1770343674,-2133436497,992876275]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;2003441479,-1813625084,-2007259834,-1001194565]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;-1597001372,-657045204,-1409169010,-89156866]}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{Name:'{"text":"Myddraal\'s Chestplate","color":"dark_red","bold":true,"italic":true}',Lore:['{"text":"The chestplate of a myddraal."}'],color:6029312},HideFlags:99,RepairCost:200,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:1,Operation:0,UUID:[I;1912786558,-725005169,-1141261570,-1904320166]},{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-1114989368,1529563202,-2123156777,-1205961233]},{AttributeName:"generic.luck",Name:"generic.luck",Amount:-1,Operation:0,UUID:[I;1578668150,939410633,-1422374255,1072099961]},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;-915898872,2021936729,-1879757360,1134388122]}]}},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:'{"text":"Myddraal Head","color":"dark_red","bold":true,"italic":true}',Lore:['{"text":"The head of a myddraal"}']},SkullOwner:{Id:[I;1201390662,-60076054,-1473109895,-1639955298],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTc2MWEzODMxNTkyZWU0YTA4ZmYwOWQ3NTdlZDgyZWM5YjBmZDhhZGI3ZWY4MmRhMmI2ODZjM2M5YzY2ZWEifX19"}]}}}}],ArmorDropChances:[0.200F,0.300F,0.300F,0.300F],ActiveEffects:[{Id:3b,Amplifier:1b,Duration:11111},{Id:5b,Amplifier:1b,Duration:11111},{Id:8b,Amplifier:1b,Duration:11111},{Id:10b,Amplifier:1b,Duration:11111},{Id:12b,Amplifier:1b,Duration:11111},{Id:13b,Amplifier:1b,Duration:11111},{Id:14b,Amplifier:1b,Duration:11111},{Id:27b,Amplifier:1b,Duration:11111},{Id:28b,Amplifier:100b,Duration:11111},{Id:30b,Amplifier:1b,Duration:11111},{Id:31b,Amplifier:1b,Duration:11111}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.follow_range,Base:300},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.2},{Name:generic.attack_damage,Base:6},{Name:generic.attack_knockback,Base:2}]}
execute at @a unless entity @a[scores={spawnderpa=4..}] unless entity @e[name=derpa,distance=0..255] run summon bat ~ 255 ~ {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,CustomName:'{"text":"derpa"}'}
execute if entity @e[name=dmain,scores={vregu=5..6}] as @a at @s run spreadplayers ~ ~ 30 150 false @e[name=derpa,distance=0..255]
function world:extras/myddraal/spawn_/4
execute if entity @a[scores={spawnderpa=10..}] run kill @e[name=derpa]