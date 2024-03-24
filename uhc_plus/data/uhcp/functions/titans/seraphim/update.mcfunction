execute store result bossbar minecraft:uhcp_seraphimhealth value run data get entity @s Health
bossbar set minecraft:uhcp_seraphimhealth players @a[distance=..32]
bossbar set minecraft:uhcp_seraphimhealth name {"selector":"@s","color":"gold"}

execute store success score @s uhcp_a_tier run data get entity @e[tag=UHCP_Seraphim,limit=1] Brain.memories
execute if score @s uhcp_a_tier matches 1 run data remove entity @s Brain.memories

tag @s add UHCP_CurrentTitan
execute as @a[distance=..2.5] run damage @s 4 mob_attack by @e[tag=UHCP_CurrentTitan,sort=nearest,limit=1]
tag @s remove UHCP_CurrentTitan

execute store result score %blocksfilled uhcp_t_count run fill ~-3 ~ ~-3 ~3 ~5 ~3 air replace #uhcp:titan_can_break
execute if score %blocksfilled uhcp_t_count matches 3.. run playsound entity.wither.break_block master @a[distance=..16] ~ ~ ~ 0.5 1.25 0.15

execute if entity @s[tag=UHCP_Bite] run return run function uhcp:titans/seraphim/bite/update

scoreboard players reset %y_diff uhcp_t_heightDifference

execute on passengers unless function uhcp:titans/check_aggression run return 0
scoreboard players add @s uhcp_t_timer 1
execute store result score %titan_y uhcp_t_heightDifference run data get entity @s Pos[1] 1
execute on target store result score %player_y uhcp_t_heightDifference run data get entity @s Pos[1] 1

execute store result score %y_diff uhcp_t_heightDifference run scoreboard players operation %titan_y uhcp_t_heightDifference -= %player_y uhcp_t_heightDifference
execute on target run tag @s add UHCP_SeraphimTarget
execute if score %y_diff uhcp_t_heightDifference matches 2.. facing entity @p[tag=UHCP_SeraphimTarget] feet run tp @s ^ ^ ^0.3 ~ ~20
execute if score %y_diff uhcp_t_heightDifference matches ..-2 facing entity @p[tag=UHCP_SeraphimTarget] feet run tp @s ^ ^ ^0.3 ~ ~20
execute unless entity @a[tag=UHCP_SeraphimTarget,distance=..24] facing entity @p[tag=UHCP_SeraphimTarget] feet run tp @s ^ ^ ^0.3 ~ ~20
tag @a remove UHCP_SeraphimTarget