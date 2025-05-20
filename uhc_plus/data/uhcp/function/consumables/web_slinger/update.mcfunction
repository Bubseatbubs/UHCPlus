scoreboard players add @s uhcp_timer 1
execute on passengers at @s run rotate @s ~30 0
tp @s ^ ^ ^0.65
execute unless block ~ ~ ~ #uhcp:non_solid_blocks run scoreboard players set @s uhcp_timer 60
scoreboard players set %blocksfilled uhcp_aug_count 0
execute if score @s uhcp_timer matches 2..89 store success score %blocksfilled uhcp_aug_count run setblock ~ ~0.5 ~ minecraft:cobweb keep
execute if score %blocksfilled uhcp_aug_count matches 1 run function uhcp:consumables/web_slinger/effects

execute if score @s uhcp_timer matches ..59 run return fail
execute on passengers run kill @s
kill @s
