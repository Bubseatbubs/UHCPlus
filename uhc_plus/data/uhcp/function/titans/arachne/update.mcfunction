tag @s add UHCP_CurrentTitan
execute as @e[type=!#uhcp:inanimate_mobs,tag=!UHCP_Titan,tag=!UHCP_Minion,distance=..3.75] run damage @s 4 minecraft:mob_attack by @n[tag=UHCP_CurrentTitan]
tag @s remove UHCP_CurrentTitan

scoreboard players set %containers uhcp_settings 0
scoreboard players operation %temp uhcp_initStatus = %time uhcp_game_time
scoreboard players operation %temp uhcp_initStatus %= #30 uhcp_const
fill ~-5 ~1 ~-5 ~5 ~5 ~5 minecraft:air replace #uhcp:containers destroy
execute if score %temp uhcp_initStatus matches 0 run fill ~-5 ~ ~-5 ~5 ~ ~5 minecraft:air replace #uhcp:containers destroy
execute store result score %blocksfilled uhcp_titans_count run fill ~-5 ~1 ~-5 ~5 ~5 ~5 minecraft:air replace #uhcp:arachne_can_break
execute if score %temp uhcp_initStatus matches 0 run execute store result score %blocksfilled2 uhcp_titans_count run fill ~-5 ~ ~-5 ~5 ~ ~5 minecraft:air replace #uhcp:arachne_can_break
execute if score %temp uhcp_initStatus matches 0 run scoreboard players operation %blocksfilled uhcp_titans_count += %blocksfilled2 uhcp_titans_count
scoreboard players set %containers uhcp_settings 1
execute if score %blocksfilled uhcp_titans_count matches 3.. run playsound minecraft:entity.wither.break_block master @a[distance=..16] ~ ~ ~ 0.5 1.25 0.15
scoreboard players set %blocksfilled uhcp_titans_count 0


tag @s[tag=UHCP_IsJumping,predicate=uhcp:on_ground] remove UHCP_IsJumping
execute as @s[tag=UHCP_IsJumping] run return 0

scoreboard players reset %y_diff uhcp_titans_height
execute unless function uhcp:titans/check_aggression run return 0

execute store result score %titan_y uhcp_titans_height run data get entity @s Pos[1] 1
execute on target store result score %player_y uhcp_titans_height run data get entity @s Pos[1] 1

execute store result score %y_diff uhcp_titans_height run scoreboard players operation %titan_y uhcp_titans_height -= %player_y uhcp_titans_height

execute if score %y_diff uhcp_titans_height matches 2.. run tp @s ^ ^ ^0.1
execute if score %y_diff uhcp_titans_height matches ..-2 run tp @s ^ ^ ^0.1
execute on target run tag @s add UHCP_ArachneTarget
execute unless entity @a[tag=UHCP_ArachneTarget,distance=..36] facing entity @p[tag=UHCP_ArachneTarget] eyes run function uhcp:titans/arachne/leap
tag @a remove UHCP_ArachneTarget
