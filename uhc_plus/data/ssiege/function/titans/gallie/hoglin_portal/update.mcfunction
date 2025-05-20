scoreboard players add @s uhcp_timer 1

scoreboard players add @s[scores={uhcp_timer=10..},predicate=uhcp:on_ground] uhcp_titans_timer 1

execute at @s[scores={uhcp_titans_timer=5..}] run function uhcp:titans/gallie/hoglin_portal/land
