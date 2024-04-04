execute store result score %top_height uhcp_top_charge run data get entity @s Pos[1]
execute unless block ~ 62 ~ minecraft:water run scoreboard players set %top_height uhcp_top_charge 62
execute if score %top_height uhcp_top_charge matches ..61 run tp @s ~ 64 ~
