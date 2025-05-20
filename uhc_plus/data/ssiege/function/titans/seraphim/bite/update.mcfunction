scoreboard players add @s uhcp_timer 1
execute if score @s uhcp_timer matches ..10 facing entity @p[gamemode=survival] eyes run tp @s ^ ^ ^0.1 ~ ~
execute unless score @s uhcp_timer matches 10.. run return 0
tag @s add UHCP_CurrentSeraphim
execute at @s anchored eyes facing entity @p[gamemode=survival,distance=..16] eyes positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ^ ^0.15 ^0.6 ~ ~
execute at @s align xyz positioned over world_surface run summon minecraft:evoker_fangs

tag @s[scores={uhcp_timer=30..}] remove UHCP_Bite
scoreboard players reset @s[scores={uhcp_timer=30..}] uhcp_timer
