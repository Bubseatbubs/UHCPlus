execute store result score @s uhcp_titans_count run data get entity @s Health
execute as @s[tag=!UHCP_Threshold4] run function uhcp:titans/gerald/threshold

scoreboard players set %containers uhcp_settings 0
scoreboard players operation %temp uhcp_initStatus = %time uhcp_game_time
scoreboard players operation %temp uhcp_initStatus %= #30 uhcp_const
fill ~-4 ~ ~-4 ~4 ~6 ~4 minecraft:air replace #uhcp:containers destroy
execute store result score %blocksfilled uhcp_titans_count run fill ~-4 ~1 ~-4 ~4 ~6 ~4 minecraft:air replace #uhcp:titan_can_break
execute if score %temp uhcp_initStatus matches 0 run execute store result score %blocksfilled2 uhcp_titans_count run fill ~-4 ~ ~-4 ~4 ~ ~4 minecraft:air replace #uhcp:titan_can_break
execute if score %temp uhcp_initStatus matches 0 run scoreboard players operation %blocksfilled uhcp_titans_count += %blocksfilled2 uhcp_titans_count
scoreboard players set %containers uhcp_settings 1
execute if score %blocksfilled uhcp_titans_count matches 3.. run playsound minecraft:entity.wither.break_block master @a[distance=..16] ~ ~ ~ 0.5 1.25 0.15

# Filling in a 1 block larger area to try to replace decorative clutter
fill ~-5 ~ ~-5 ~5 ~7 ~5 minecraft:air replace #uhcp:decorative_clutter

execute unless entity @p[distance=..32,gamemode=survival] run return 0
scoreboard players add @s uhcp_titans_timer 1
