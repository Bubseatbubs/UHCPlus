tag @s add UHCP_CurrentTitan
execute as @e[type=!#uhcp:inanimate_mobs,tag=!UHCP_Titan,tag=!UHCP_Minion,distance=..3.5] run damage @s 4 minecraft:mob_attack by @n[tag=UHCP_CurrentTitan]
tag @s remove UHCP_CurrentTitan

scoreboard players set %containers uhcp_settings 0
fill ~-5 ~-0.5 ~-5 ~5 ~16 ~5 minecraft:water replace #uhcp:containers
execute store result score %blocksfilled uhcp_titans_count run fill ~-5 ~1.5 ~-5 ~5 ~16 ~5 minecraft:water replace #uhcp:titan_can_break
fill ~-5 ~8 ~-5 ~5 ~10 ~5 minecraft:water keep
fill ~-5 ~-0.5 ~-5 ~5 ~1.5 ~5 minecraft:water keep
scoreboard players set %containers uhcp_settings 1
execute if score %blocksfilled uhcp_titans_count matches 3.. run playsound minecraft:item.bucket.empty master @a[distance=..16] ~ ~ ~ 0.5 1.25 0.15
effect give @a[distance=..16,gamemode=survival] minecraft:water_breathing 5 0 false

# Filling in a 1 block larger area to try to replace decorative clutter
fill ~-6 ~ ~-6 ~6 ~16 ~6 minecraft:water replace #uhcp:decorative_clutter

scoreboard players reset %y_diff uhcp_titans_height

execute unless function uhcp:titans/check_aggression run return 0

execute store result score %titan_y uhcp_titans_height run data get entity @s Pos[1] 1
execute on target store result score %player_y uhcp_titans_height run data get entity @s Pos[1] 1

execute store result score %y_diff uhcp_titans_height run scoreboard players operation %titan_y uhcp_titans_height -= %player_y uhcp_titans_height
execute on target run tag @s add UHCP_GigaCreeperTarget
execute if score %y_diff uhcp_titans_height matches 2.. facing entity @p[tag=UHCP_GigaCreeperTarget] feet run tp @s ^ ^ ^0.3 ~ ~20
execute if score %y_diff uhcp_titans_height matches ..-2 facing entity @p[tag=UHCP_GigaCreeperTarget] feet run tp @s ^ ^ ^0.3 ~ ~20
execute unless entity @a[tag=UHCP_GigaCreeperTarget,distance=..24] facing entity @p[tag=UHCP_GigaCreeperTarget] feet run tp @s ^ ^ ^0.3 ~ ~20
tag @a remove UHCP_GigaCreeperTarget
