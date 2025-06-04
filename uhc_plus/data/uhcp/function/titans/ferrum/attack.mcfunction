execute at @s[scores={uhcp_titans_attack=0}] run function uhcp:titans/ferrum/jump/jump
execute at @s[scores={uhcp_titans_attack=1}] run function uhcp:titans/ferrum/block/summon_indicator
execute at @s[scores={uhcp_titans_attack=2}] if score %mode uhcp_settings matches 0 as @a[distance=..16,gamemode=survival] at @s run function uhcp:titans/ferrum/knock_shield
