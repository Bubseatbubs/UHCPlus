execute store result score @s uhcp_titans_count run data get entity @s Health
execute as @s[tag=!UHCP_Threshold4] run function uhcp:titans/gerald/threshold

scoreboard players set %containers uhcp_settings 0
fill ~-4 ~ ~-4 ~4 ~6 ~4 minecraft:air replace #uhcp:containers destroy
execute store result score %blocksfilled uhcp_titans_count run fill ~-4 ~ ~-4 ~4 ~6 ~4 minecraft:air replace #uhcp:titan_can_break
scoreboard players set %containers uhcp_settings 1
execute if score %blocksfilled uhcp_titans_count matches 3.. run playsound minecraft:entity.wither.break_block master @a[distance=..16] ~ ~ ~ 0.5 1.25 0.15

execute unless entity @p[distance=..32,gamemode=survival] run return 0
scoreboard players add @s uhcp_titans_timer 1
