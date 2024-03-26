scoreboard players add @s uhcp_a_timer 1

execute if score @s uhcp_a_timer matches 24 run function uhcp:titans/seraphim/laser/init
execute if score @s uhcp_a_timer matches 32 on passengers run kill @s
execute unless score @s uhcp_a_timer matches 32.. run return 0

kill @s