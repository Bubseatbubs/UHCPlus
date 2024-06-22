scoreboard players add @s uhcp_timer 1

execute if score @s uhcp_timer matches 32 on passengers run kill @s
execute unless score @s uhcp_timer matches 32.. run return 0


execute positioned ~ ~1 ~ summon minecraft:trident run function uhcp:titans/triton/trident/init_trident
kill @s[scores={uhcp_timer=50}]
