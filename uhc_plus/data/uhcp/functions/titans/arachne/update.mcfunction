execute store result score %blocksfilled uhcp_t_count run fill ~-5 ~ ~-5 ~5 ~5 ~5 air replace #uhcp:titan_can_break
execute if score %blocksfilled uhcp_t_count matches 3.. run playsound entity.wither.break_block master @a[distance=..16] ~ ~ ~ 0.5 1.25 0.15


scoreboard players reset %y_diff uhcp_t_heightDifference

execute unless function uhcp:titans/check_aggression run return 0

execute store result score %titan_y uhcp_t_heightDifference run data get entity @s Pos[1] 1
execute on target store result score %player_y uhcp_t_heightDifference run data get entity @s Pos[1] 1

execute store result score %y_diff uhcp_t_heightDifference run scoreboard players operation %titan_y uhcp_t_heightDifference -= %player_y uhcp_t_heightDifference

execute if score %y_diff uhcp_t_heightDifference matches 2.. run tp @s ^ ^ ^0.1
execute if score %y_diff uhcp_t_heightDifference matches ..-2 run tp @s ^ ^ ^0.1
execute on target run tag @s add UHCP_ArachneTarget
execute unless entity @a[tag=UHCP_ArachneTarget,distance=..36] facing entity @p[tag=UHCP_ArachneTarget] eyes run function uhcp:titans/arachne/leap
tag @a remove UHCP_ArachneTarget