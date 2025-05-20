execute store result score @s uhcp_titans_attack run random value 0..3

execute at @s[scores={uhcp_titans_attack=0}] run function uhcp:titans/tyrion/soulflames_embrace/init
execute at @s[scores={uhcp_titans_attack=1}] run function uhcp:titans/tyrion/gravity_globe
execute at @s[scores={uhcp_titans_attack=2}] as @p[gamemode=survival,distance=..16] run function uhcp:titans/tyrion/runic_sentry/init
execute at @s[scores={uhcp_titans_attack=1}] run function uhcp:titans/tyrion/voltrune/init
