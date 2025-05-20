scoreboard players add @s uhcp_timer 1

execute if score @s uhcp_timer matches 32 on passengers run kill @s
execute unless score @s uhcp_timer matches 32.. run return 0

summon minecraft:tnt ~ ~8 ~ {fuse:20s}
kill @s