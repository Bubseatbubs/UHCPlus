scoreboard players set @s uhcp_initStatus 1
execute if items entity @s armor.head * run scoreboard players set @s uhcp_initStatus 0
execute if score @s uhcp_initStatus matches 0 run give @s minecraft:diamond_helmet
execute if score @s uhcp_initStatus matches 1 run item replace entity @s armor.head with minecraft:diamond_helmet

scoreboard players set @s uhcp_initStatus 1
execute if items entity @s armor.chest * run scoreboard players set @s uhcp_initStatus 0
execute if score @s uhcp_initStatus matches 0 run give @s minecraft:diamond_chestplate
execute if score @s uhcp_initStatus matches 1 run item replace entity @s armor.chest with minecraft:diamond_chestplate

scoreboard players set @s uhcp_initStatus 1
execute if items entity @s armor.legs * run scoreboard players set @s uhcp_initStatus 0
execute if score @s uhcp_initStatus matches 0 run give @s minecraft:diamond_leggings
execute if score @s uhcp_initStatus matches 1 run item replace entity @s armor.legs with minecraft:diamond_leggings

scoreboard players set @s uhcp_initStatus 1
execute if items entity @s armor.feet * run scoreboard players set @s uhcp_initStatus 0
execute if score @s uhcp_initStatus matches 0 run give @s minecraft:diamond_boots
execute if score @s uhcp_initStatus matches 1 run item replace entity @s armor.feet with minecraft:diamond_boots

scoreboard players set @s uhcp_game_time -1
