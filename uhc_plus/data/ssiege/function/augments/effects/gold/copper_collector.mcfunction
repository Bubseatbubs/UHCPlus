execute if score @s ssiege_mine_copper matches 0 run execute if score @s ssiege_mine_dcopper matches 0 run return fail

scoreboard players set @s ssiege_mine_copper 0
scoreboard players set @s ssiege_mine_dcopper 0

execute store result score @s uhcp_initStatus run random value 0..99
execute if score @s uhcp_initStatus matches 15.. run return fail

execute at @s run loot spawn ^ ^ ^2 loot ssiege:soulshard
execute at @s as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot"}},distance=..15] run execute store result score @s uhcp_initStatus run data get entity @s Age
execute at @s as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..15] run execute store result score @s uhcp_initStatus run data get entity @s Age
execute as @e[type=item,distance=..15] if score @s uhcp_initStatus matches ..10 run tag @s add SSIEGE_new

execute at @s run tp @e[type=item,distance=..15,nbt={Item:{id:"minecraft:nether_star"}},tag=SSIEGE_new] @n[type=item,tag=SSIEGE_new,nbt={Item:{id:"minecraft:copper_ingot"}},distance=..15]

tellraw @s ["",{"text":"[Copper Collector]","bold":true,"color":"gold"},{"text":" You found a ","color":"white"},{"text":"Soul Shard","color":"light_purple"},{"text":"!","color":"white"}]

tag @e remove SSIEGE_new