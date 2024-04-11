scoreboard players add @s uhcp_timer 1
execute on passengers at @s run tp @s ~ ~ ~ ~30 ~
tp @s ^ ^ ^0.65
execute unless block ~ ~ ~ #uhcp:non_solid_blocks run scoreboard players set @s uhcp_timer 60
execute store success score %blocksfilled uhcp_aug_count if score @s uhcp_timer matches 2..89 run setblock ~ ~0.5 ~ cobweb keep
execute if score %blocksfilled uhcp_aug_count matches 1 at @s run playsound block.wool.place master @a[distance=..12] ~ ~ ~ 1 1 0.7
execute if score %blocksfilled uhcp_aug_count matches 1 at @s run particle minecraft:block{block_state: "minecraft:cobweb"} ~ ~ ~ 0.25 0.25 0.25 0.1 10 normal

execute if score @s uhcp_timer matches 60.. run function uhcp:consumables/web_slinger/end

