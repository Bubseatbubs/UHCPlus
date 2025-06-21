# Fail Safe for all non-swords and axes
execute store result score %attack_speed uhcp_initStatus run attribute @s attack_speed get 100
scoreboard players set @s ssiege_attack_cooldown 2000
scoreboard players operation @s ssiege_attack_cooldown /= %attack_speed uhcp_initStatus