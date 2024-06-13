scoreboard players add @s uhcp_timer 1

execute if score @s uhcp_timer matches 10.. if entity @s[nbt={OnGround:1b}] at @s run scoreboard players add @s uhcp_titans_timer 1

execute if score @s uhcp_titans_timer matches 5.. at @s run function uhcp:titans/gallie/nether_portal/land