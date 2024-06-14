tag @s add UHCP_CurrentTitan
execute as @e[type=!#uhcp:inanimate_mobs,tag=!UHCP_Titan,tag=!UHCP_Minion,distance=..5.25] run damage @s 4 minecraft:mob_attack by @n[tag=UHCP_CurrentTitan]
tag @s remove UHCP_CurrentTitan

execute store result score %blocksfilled uhcp_titans_count run fill ~-6 ~ ~-6 ~6 ~12 ~6 minecraft:air replace #uhcp:titan_can_break
execute if score %blocksfilled uhcp_titans_count matches 3.. run playsound minecraft:entity.wither.break_block master @a[distance=..16] ~ ~ ~ 0.5 1.25 0.15

scoreboard players reset %y_diff uhcp_titans_height

execute if score @s uhcp_timer matches 10.. at @s if entity @s[tag=UHCP_IsJumping] if entity @e[tag=UHCP_FerrumLanding,distance=..2] run function uhcp:titans/ferrum/jump/land
execute if score @s uhcp_timer matches 10.. at @s if entity @s[tag=UHCP_IsJumping] if entity @p[gamemode=survival,distance=..2] run function uhcp:titans/ferrum/jump/land
execute if entity @s[tag=UHCP_IsJumping] run return run function uhcp:titans/ferrum/jump/update
execute unless function uhcp:titans/check_aggression run return 0


execute store result score %titan_y uhcp_titans_height run data get entity @s Pos[1] 1
execute on target store result score %player_y uhcp_titans_height run data get entity @s Pos[1] 1

execute store result score %y_diff uhcp_titans_height run scoreboard players operation %titan_y uhcp_titans_height -= %player_y uhcp_titans_height
execute on target run tag @s add UHCP_FerrumTarget
execute if score %y_diff uhcp_titans_height matches 2.. facing entity @p[tag=UHCP_FerrumTarget] feet run tp @s ^ ^ ^0.3 ~ ~20
execute if score %y_diff uhcp_titans_height matches ..-2 facing entity @p[tag=UHCP_FerrumTarget] feet run tp @s ^ ^ ^0.3 ~ ~20
execute if entity @a[tag=UHCP_FerrumTarget] facing entity @p[tag=UHCP_FerrumTarget] feet run tp @s ^ ^ ^0.1 ~ ~20
execute if entity @s[tag=!UHCP_IsJumping] if entity @a[tag=UHCP_FerrumTarget,distance=16..] run function uhcp:titans/ferrum/jump/jump
tag @a remove UHCP_FerrumTarget