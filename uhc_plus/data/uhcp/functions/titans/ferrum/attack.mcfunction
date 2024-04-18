execute if score @s uhcp_titans_attack matches 0 at @s run function uhcp:titans/ferrum/jump/jump
execute if score @s uhcp_titans_attack matches 1 at @s run function uhcp:titans/ferrum/block/summon_indicator
execute if score @s uhcp_titans_attack matches 2 at @s as @a[distance=..16,gamemode=survival] at @s run function uhcp:titans/ferrum/knock_shield