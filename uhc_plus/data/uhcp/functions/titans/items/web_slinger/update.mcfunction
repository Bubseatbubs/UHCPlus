scoreboard players add @s uhcp_a_timer 1
execute on passengers at @s run tp @s ~ ~ ~ ~30 ~
execute if score @s uhcp_a_timer matches ..45 run tp @s ^ ^ ^1
execute unless block ~ ~ ~ #uhcp:non_solid_blocks run scoreboard players set @s uhcp_a_timer 45
execute if score @s uhcp_a_timer matches 2..89 run setblock ~ ~0.5 ~ cobweb keep


execute if score @s uhcp_a_timer matches 45.. run function uhcp:titans/items/web_slinger/return
execute if score @s uhcp_a_timer matches 90.. run function uhcp:titans/items/web_slinger/end

