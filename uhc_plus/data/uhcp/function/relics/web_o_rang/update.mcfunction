scoreboard players add @s uhcp_timer 1
execute on passengers at @s run rotate @s ~30 0
tp @s[scores={uhcp_timer=..45}] ^ ^ ^1
execute unless block ~ ~ ~ #uhcp:no_hitbox_blocks run scoreboard players set @s uhcp_timer 45
scoreboard players set %blocksfilled uhcp_aug_count 0
execute if score @s uhcp_timer matches 2..89 store success score %blocksfilled uhcp_aug_count run setblock ~ ~0.5 ~ minecraft:cobweb keep
execute if score %blocksfilled uhcp_aug_count matches 1 at @s run playsound minecraft:block.wool.place master @a[distance=..12] ~ ~ ~ 1 1 0.7
execute if score %blocksfilled uhcp_aug_count matches 1 at @s run particle minecraft:block{block_state:"minecraft:cobweb"} ~ ~ ~ 0.25 0.25 0.25 0.1 10 normal
execute if score %blocksfilled uhcp_aug_count matches 1 at @s positioned ~ ~0.5 ~ align xyz run summon minecraft:marker ~ ~ ~ {Tags:["UHCP_Summon","UHCP_TempCobweb"]}

execute if score @s uhcp_timer matches 45.. run function uhcp:relics/web_o_rang/return
execute if score @s uhcp_timer matches 90.. run function uhcp:relics/web_o_rang/end
