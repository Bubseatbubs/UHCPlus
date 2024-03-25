execute store result bossbar minecraft:uhcp_tritonhealth value run data get entity @s Health
bossbar set minecraft:uhcp_tritonhealth players @a[distance=..32]
bossbar set minecraft:uhcp_tritonhealth name {"selector":"@s","color":"gold"}

tag @s add UHCP_CurrentTitan
execute as @a[distance=..3] run damage @s 4 mob_attack by @e[tag=UHCP_CurrentTitan,sort=nearest,limit=1]
tag @s remove UHCP_CurrentTitan

execute store result score %blocksfilled uhcp_t_count run fill ~-5 ~-0.5 ~-5 ~5 ~16 ~5 water replace #uhcp:titan_can_break
execute store result score %blocksfilled uhcp_t_count run fill ~-5 ~8 ~-5 ~5 ~10 ~5 water keep
execute if score %blocksfilled uhcp_t_count matches 3.. run playsound minecraft:item.bucket.empty master @a[distance=..16] ~ ~ ~ 0.5 1.25 0.15
effect give @a[distance=..16,gamemode=survival] water_breathing 5 0 false

scoreboard players reset %y_diff uhcp_t_heightDifference

execute unless function uhcp:titans/check_aggression run return 0

execute store result score %titan_y uhcp_t_heightDifference run data get entity @s Pos[1] 1
execute on target store result score %player_y uhcp_t_heightDifference run data get entity @s Pos[1] 1

execute store result score %y_diff uhcp_t_heightDifference run scoreboard players operation %titan_y uhcp_t_heightDifference -= %player_y uhcp_t_heightDifference
execute on target run tag @s add UHCP_GigaCreeperTarget
execute if score %y_diff uhcp_t_heightDifference matches 2.. facing entity @p[tag=UHCP_GigaCreeperTarget] feet run tp @s ^ ^ ^0.3 ~ ~20
execute if score %y_diff uhcp_t_heightDifference matches ..-2 facing entity @p[tag=UHCP_GigaCreeperTarget] feet run tp @s ^ ^ ^0.3 ~ ~20
execute unless entity @a[tag=UHCP_GigaCreeperTarget,distance=..24] facing entity @p[tag=UHCP_GigaCreeperTarget] feet run tp @s ^ ^ ^0.3 ~ ~20
tag @a remove UHCP_GigaCreeperTarget