tag @s add UHCP_CurrentTitan
execute as @e[type=!#uhcp:inanimate_mobs,tag=!UHCP_Titan,tag=!UHCP_Minion,distance=..3.25] run damage @s 3 minecraft:mob_attack by @n[tag=UHCP_CurrentTitan]
tag @s remove UHCP_CurrentTitan

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

scoreboard players reset %y_diff uhcp_titans_height

execute unless function uhcp:titans/check_aggression run return 0

execute store result score %titan_y uhcp_titans_height run data get entity @s Pos[1] 1
execute on target store result score %player_y uhcp_titans_height run data get entity @s Pos[1] 1

execute store result score %y_diff uhcp_titans_height run scoreboard players operation %titan_y uhcp_titans_height -= %player_y uhcp_titans_height
execute on target run tag @s add UHCP_FenrirTarget
execute if score %y_diff uhcp_titans_height matches 2.. facing entity @p[tag=UHCP_FenrirTarget] feet run tp @s ^ ^ ^0.3 ~ ~20
execute if score %y_diff uhcp_titans_height matches ..-2 facing entity @p[tag=UHCP_FenrirTarget] feet run tp @s ^ ^ ^0.3 ~ ~20
execute unless entity @a[tag=UHCP_FenrirTarget,distance=..24] facing entity @p[tag=UHCP_FenrirTarget] feet run tp @s ^ ^ ^0.3 ~ ~20
tag @a remove UHCP_FenrirTarget
