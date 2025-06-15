execute if score @s ssiege_mine_diamonds matches 0 run execute if score @s ssiege_mine_ddiamonds matches 0 run return fail

scoreboard players set @s ssiege_mine_diamonds 0
scoreboard players set @s ssiege_mine_ddiamonds 0
tellraw @s ["",{"text":"[Blood Diamonds]","bold":true,"color":"gold"},{"text":" Diamond Ores","color":"aqua"},{"text":" you mine drop nothing. You get","color":"dark_red"},{"text":" Diamonds","color":"aqua"},{"text":" from killing hostile mobs!","color":"dark_red"}]

execute at @s run kill @e[type=experience_orb,distance=..15]

execute at @s run tag @e[type=item,distance=..15,nbt={Item:{id:"minecraft:diamond"}}] add SSIEGE_check_bd
execute as @e[tag=SSIEGE_check_bd] run execute store result score @s uhcp_initStatus run data get entity @s Age
execute as @e[tag=SSIEGE_check_bd] if score @s uhcp_initStatus matches ..10 run kill @s

tag @e[tag=SSIEGE_check_bd] remove SSIEGE_check_bd