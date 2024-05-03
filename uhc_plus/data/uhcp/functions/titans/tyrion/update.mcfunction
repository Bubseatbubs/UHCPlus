tag @s add UHCP_CurrentTitan
execute as @a[distance=..3.5] run damage @s 1 mob_attack by @e[tag=UHCP_CurrentTitan,sort=nearest,limit=1]
execute as @e[type=!player,type=!#uhcp:inanimate_mobs,tag=!UHCP_Titan,tag=!UHCP_Minion,distance=..3.5] run damage @s 10 mob_attack by @e[tag=UHCP_CurrentTitan,sort=nearest,limit=1]
tag @s remove UHCP_CurrentTitan

execute store result score %blocksfilled uhcp_titans_count run fill ~-5 ~ ~-5 ~5 ~18 ~5 air replace #uhcp:titan_can_break
execute if score %blocksfilled uhcp_titans_count matches 3.. run playsound entity.wither.break_block master @a[distance=..16] ~ ~ ~ 0.5 1.25 0.15

scoreboard players reset %y_diff uhcp_titans_height

execute unless entity @p[distance=..16,gamemode=survival] run return 0
scoreboard players add @s uhcp_titans_timer 2
tag @p[distance=..16,gamemode=survival] add UHCP_TyrionTarget
execute store result score %titan_y uhcp_titans_height run data get entity @s Pos[1] 1
execute on target store result score %player_y uhcp_titans_height run data get entity @s Pos[1] 1

execute store result score %y_diff uhcp_titans_height run scoreboard players operation %titan_y uhcp_titans_height -= %player_y uhcp_titans_height
execute facing entity @p[tag=UHCP_TyrionTarget,distance=0.5..24] feet run tp @s ^ ^ ^0.1 ~ ~20
execute if score %y_diff uhcp_titans_height matches 2.. facing entity @p[tag=UHCP_TyrionTarget] feet run tp @s ^ ^ ^0.07 ~ ~20
execute if score %y_diff uhcp_titans_height matches ..-2 facing entity @p[tag=UHCP_TyrionTarget] feet run tp @s ^ ^ ^0.07 ~ ~20
execute unless entity @a[tag=UHCP_TyrionTarget,distance=..24] facing entity @p[tag=UHCP_TyrionTarget] feet run tp @s ^ ^ ^0.07 ~ ~20
tag @a remove UHCP_TyrionTarget