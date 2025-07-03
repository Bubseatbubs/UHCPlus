execute if score @s ssiege_mine_coal matches 0 run execute if score @s ssiege_mine_dcoal matches 0 run return fail

scoreboard players set @s ssiege_mine_coal 0
scoreboard players set @s ssiege_mine_dcoal 0

execute store result score @s uhcp_initStatus run random value 0..99
execute if score @s uhcp_initStatus matches 28.. run return fail

execute at @s run summon item ^ ^ ^2 {Item:{id:"minecraft:diamond"}}
execute at @s as @e[type=item,nbt={Item:{id:"minecraft:coal"}},distance=..15] run execute store result score @s uhcp_initStatus run data get entity @s Age
execute at @s as @e[type=item,nbt={Item:{id:"minecraft:diamond"}},distance=..15] run execute store result score @s uhcp_initStatus run data get entity @s Age
execute as @e[type=item,distance=..15] if score @s uhcp_initStatus matches ..10 run tag @s add SSIEGE_new

execute at @s run tp @e[type=item,distance=..15,nbt={Item:{id:"minecraft:diamond"}},tag=SSIEGE_new] @n[type=item,tag=SSIEGE_new,nbt={Item:{id:"minecraft:coal"}},distance=..15]
playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 1 1 1
tag @e remove SSIEGE_new