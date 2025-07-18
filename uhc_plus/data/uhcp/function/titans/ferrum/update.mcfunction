tag @s add UHCP_CurrentTitan
execute as @e[type=!#uhcp:inanimate_mobs,tag=!UHCP_Titan,tag=!UHCP_Minion,distance=..5.25] run damage @s 4 minecraft:mob_attack by @n[tag=UHCP_CurrentTitan]
tag @s remove UHCP_CurrentTitan

scoreboard players set %containers uhcp_settings 0
scoreboard players operation %temp uhcp_initStatus = %time uhcp_game_time
scoreboard players operation %temp uhcp_initStatus %= #30 uhcp_const
fill ~-6 ~ ~-6 ~6 ~12 ~6 minecraft:air replace #uhcp:containers destroy
execute store result score %blocksfilled uhcp_titans_count run fill ~-6 ~1 ~-6 ~6 ~12 ~6 minecraft:air replace #uhcp:titan_can_break
execute if score %temp uhcp_initStatus matches 0 run execute store result score %blocksfilled2 uhcp_titans_count run fill ~-6 ~ ~-6 ~6 ~ ~6 minecraft:air replace #uhcp:titan_can_break
execute if score %temp uhcp_initStatus matches 0 run scoreboard players operation %blocksfilled uhcp_titans_count += %blocksfilled2 uhcp_titans_count
scoreboard players set %containers uhcp_settings 1
execute if score %blocksfilled uhcp_titans_count matches 3.. run playsound minecraft:entity.wither.break_block master @a[distance=..16] ~ ~ ~ 0.5 1.25 0.15

# Filling in a 1 block larger area to try to replace decorative clutter
fill ~-7 ~ ~-7 ~7 ~13 ~7 minecraft:air replace #uhcp:decorative_clutter

scoreboard players reset %y_diff uhcp_titans_height

execute at @s[tag=UHCP_IsJumping,scores={uhcp_timer=10..}] if entity @e[tag=UHCP_FerrumLanding,distance=..2] run function uhcp:titans/ferrum/jump/land
execute at @s[tag=UHCP_IsJumping,scores={uhcp_timer=10..}] if entity @p[gamemode=survival,distance=..2] run function uhcp:titans/ferrum/jump/land
execute as @s[tag=UHCP_IsJumping] run return run function uhcp:titans/ferrum/jump/update
execute unless function uhcp:titans/check_aggression run return 0

execute store result score %titan_y uhcp_titans_height run data get entity @s Pos[1] 1
execute on target store result score %player_y uhcp_titans_height run data get entity @s Pos[1] 1

execute store result score %y_diff uhcp_titans_height run scoreboard players operation %titan_y uhcp_titans_height -= %player_y uhcp_titans_height
execute on target run tag @s add UHCP_FerrumTarget
execute if score %y_diff uhcp_titans_height matches 2.. facing entity @p[tag=UHCP_FerrumTarget] feet run tp @s ^ ^ ^0.3 ~ ~20
execute if score %y_diff uhcp_titans_height matches ..-2 facing entity @p[tag=UHCP_FerrumTarget] feet run tp @s ^ ^ ^0.3 ~ ~20
execute if entity @a[tag=UHCP_FerrumTarget] facing entity @p[tag=UHCP_FerrumTarget] feet run tp @s ^ ^ ^0.1 ~ ~20
execute as @s[tag=!UHCP_IsJumping] if entity @a[tag=UHCP_FerrumTarget,distance=16..] run function uhcp:titans/ferrum/jump/jump
tag @a remove UHCP_FerrumTarget
