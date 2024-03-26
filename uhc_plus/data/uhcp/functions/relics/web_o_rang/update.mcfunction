scoreboard players add @s uhcp_timer 1
execute on passengers at @s run tp @s ~ ~ ~ ~30 ~
execute if score @s uhcp_timer matches ..45 run tp @s ^ ^ ^1
execute unless block ~ ~ ~ #uhcp:non_solid_blocks run scoreboard players set @s uhcp_timer 45
execute store success score %blocksfilled uhcp_aug_count if score @s uhcp_timer matches 2..89 run setblock ~ ~0.5 ~ cobweb keep
execute if score %blocksfilled uhcp_aug_count matches 1 at @s run playsound block.wool.place master @a[distance=..12] ~ ~ ~ 1 1 0.7
execute if score %blocksfilled uhcp_aug_count matches 1 at @s run particle minecraft:block cobweb ~ ~ ~ 0.25 0.25 0.25 0.1 10 normal
execute if score %blocksfilled uhcp_aug_count matches 1 at @s positioned ~ ~0.5 ~ align xyz run summon marker ~ ~ ~ {Tags:["UHCP_Summon","UHCP_TempCobweb"]}


execute if score @s uhcp_timer matches 45.. run function uhcp:relics/web_o_rang/return
execute if score @s uhcp_timer matches 90.. run function uhcp:relics/web_o_rang/end

