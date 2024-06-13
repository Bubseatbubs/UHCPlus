setblock ~ ~ ~ minecraft:chest destroy
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:reinforced_deepslate
loot insert ~ ~ ~ loot uhcp:titans/loot
loot insert ~ ~ ~ loot uhcp:titans/loot

execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:1b}] run loot insert ~ ~ ~ loot uhcp:titans/arachne
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:1b}] if entity @p[gamemode=survival,distance=..12] run tellraw @a [{"text":"Arachne","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@a[gamemode=survival,distance=..12]","color":"gold"},{"text":"!","color":"white"}]
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:2b}] run loot insert ~ ~ ~ loot uhcp:titans/gigantus
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:2b}] if entity @p[gamemode=survival,distance=..12] run tellraw @a [{"text":"Gigantus","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@a[gamemode=survival,distance=..12]","color":"gold"},{"text":"!","color":"white"}]
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:3b}] run loot insert ~ ~ ~ loot uhcp:titans/fenrir
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:3b}] if entity @p[gamemode=survival,distance=..12] run tellraw @a [{"text":"Fenrir","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@a[gamemode=survival,distance=..12]","color":"gold"},{"text":"!","color":"white"}]
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:4b}] run loot insert ~ ~ ~ loot uhcp:titans/bone_colossus
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:4b}] if entity @p[gamemode=survival,distance=..12] run tellraw @a [{"text":"Bone Colossus","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@a[gamemode=survival,distance=..12]","color":"gold"},{"text":"!","color":"white"}]
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:5b}] run loot insert ~ ~ ~ loot uhcp:titans/giga_creeper
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:5b}] if entity @p[gamemode=survival,distance=..12] run tellraw @a [{"text":"Giga Creeper","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@a[gamemode=survival,distance=..12]","color":"gold"},{"text":"!","color":"white"}]
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:6b}] run loot insert ~ ~ ~ loot uhcp:titans/triton
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:6b}] if entity @p[gamemode=survival,distance=..12] run tellraw @a [{"text":"Triton","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@a[gamemode=survival,distance=..12]","color":"gold"},{"text":"!","color":"white"}]
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:7b}] run loot insert ~ ~ ~ loot uhcp:titans/seraphim
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:7b}] if entity @p[gamemode=survival,distance=..12] run tellraw @a [{"text":"Seraphim","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@a[gamemode=survival,distance=..12]","color":"gold"},{"text":"!","color":"white"}]
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:8b}] run loot insert ~ ~ ~ loot uhcp:titans/ferrum
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:8b}] if entity @p[gamemode=survival,distance=..12] run tellraw @a [{"text":"Ferrum","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@a[gamemode=survival,distance=..12]","color":"gold"},{"text":"!","color":"white"}]
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:9b}] run loot insert ~ ~ ~ loot uhcp:titans/infernus
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:9b}] if entity @p[gamemode=survival,distance=..12] run tellraw @a [{"text":"Infernus","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@a[gamemode=survival,distance=..12]","color":"gold"},{"text":"!","color":"white"}]
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:10b}] run loot insert ~ ~ ~ loot uhcp:titans/tyrion
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:10b}] if entity @p[gamemode=survival,distance=..12] run tellraw @a [{"text":"Tyrion","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@a[gamemode=survival,distance=..12]","color":"gold"},{"text":"!","color":"white"}]
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:11b}] run loot insert ~ ~ ~ loot uhcp:titans/gerald
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:11b}] if entity @p[gamemode=survival,distance=..12] run tellraw @a [{"text":"Gerald","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@a[gamemode=survival,distance=..12]","color":"gold"},{"text":"!","color":"white"}]
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:12b}] run loot insert ~ ~ ~ loot uhcp:titans/gallie
execute if items entity @s contents *[minecraft:custom_data~{uhcp_titan_id:12b}] if entity @p[gamemode=survival,distance=..12] run tellraw @a [{"text":"Gallie","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@a[gamemode=survival,distance=..12]","color":"gold"},{"text":"!","color":"white"}]

execute as @a[distance=..16,gamemode=survival,scores={uhcp_augment=208}] at @s run function uhcp:entity/items/loot/summon
execute as @a[distance=..16,gamemode=survival,scores={uhcp_augment=208}] at @s run loot replace entity @e[type=minecraft:item,tag=UHCP_NewLoot,sort=nearest,limit=1] contents loot uhcp:consumables/titan_spinal_fluid
execute as @a[distance=..16,gamemode=survival,scores={uhcp_augment=208}] at @s run function uhcp:entity/items/loot/finish

particle minecraft:totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0.1 100 normal
playsound minecraft:ui.toast.challenge_complete master @a[distance=..12] ~ ~ ~ 1 1 1
playsound minecraft:block.trial_spawner.eject_item master @a[distance=..16] ~ ~ ~ 1 1 0.75
kill @s