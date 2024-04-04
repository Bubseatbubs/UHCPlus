execute store result score %top_height uhcp_top_charge run data get entity @s Pos[1]
execute unless block ~ 62 ~ minecraft:water run scoreboard players set %top_height uhcp_top_charge 64
execute if score %top_height uhcp_top_charge matches ..63 run tp @s ~ 64 ~
