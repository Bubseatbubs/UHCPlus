execute if function uhcp:titans/check_aggression run scoreboard players add @s uhcp_titans_timer 1

execute at @s run function uhcp:titans/determine

execute if score @s uhcp_titans_timer matches 200.. run function uhcp:titans/attack
