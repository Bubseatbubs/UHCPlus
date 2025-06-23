scoreboard players reset @s uhcp_aug_tier
execute store success score @s uhcp_aug_tier run data get entity @e[tag=UHCP_Seraphim,limit=1] Brain.memories."minecraft:liked_player"
data remove entity @s[scores={uhcp_aug_tier=1}] Brain.memories

tag @s add UHCP_CurrentTitan
execute as @e[type=!#uhcp:inanimate_mobs,tag=!UHCP_Titan,tag=!UHCP_Minion,distance=..2.5] run damage @s 4 minecraft:mob_attack by @n[tag=UHCP_CurrentTitan]
tag @s remove UHCP_CurrentTitan

scoreboard players set %containers uhcp_settings 0
fill ~-3 ~ ~-3 ~3 ~7 ~3 minecraft:air replace #uhcp:containers destroy
execute store result score %blocksfilled uhcp_titans_count run fill ~-3 ~ ~-3 ~3 ~7 ~3 minecraft:air replace #uhcp:titan_can_break
scoreboard players set %containers uhcp_settings 1
execute if score %blocksfilled uhcp_titans_count matches 3.. run playsound minecraft:entity.wither.break_block master @a[distance=..16] ~ ~ ~ 0.5 1.25 0.15

# Filling in a 1 block larger area to try to replace decorative clutter
fill ~-4 ~ ~-4 ~4 ~8 ~4 minecraft:air replace #uhcp:decorative_clutter

execute as @s[tag=UHCP_Bite] run return run function uhcp:titans/seraphim/bite/update

scoreboard players reset %y_diff uhcp_titans_height

execute on passengers unless function uhcp:titans/check_aggression run return 0
scoreboard players add @s uhcp_titans_timer 1
execute store result score %titan_y uhcp_titans_height run data get entity @s Pos[1] 1
execute on target store result score %player_y uhcp_titans_height run data get entity @s Pos[1] 1

execute store result score %y_diff uhcp_titans_height run scoreboard players operation %titan_y uhcp_titans_height -= %player_y uhcp_titans_height
execute on target run tag @s add UHCP_SeraphimTarget
execute if score %y_diff uhcp_titans_height matches 2.. facing entity @p[tag=UHCP_SeraphimTarget] feet run tp @s ^ ^ ^0.3 ~ ~20
execute if score %y_diff uhcp_titans_height matches ..-2 facing entity @p[tag=UHCP_SeraphimTarget] feet run tp @s ^ ^ ^0.3 ~ ~20
execute unless entity @a[tag=UHCP_SeraphimTarget,distance=..24] facing entity @p[tag=UHCP_SeraphimTarget] feet run tp @s ^ ^ ^0.3 ~ ~20
tag @a remove UHCP_SeraphimTarget
