scoreboard players add @s uhcp_a_timer 1

execute if score @s uhcp_a_timer matches 32 on passengers run kill @s
execute unless score @s uhcp_a_timer matches 32.. run return 0


execute positioned ~ ~1 ~ summon trident run function uhcp:titans/triton/trident/init_trident
execute if score @s uhcp_a_timer matches 50 run kill @s