execute store result score @s uhcp_titans_attack run random value 0..3

execute if score @s uhcp_titans_attack matches 0 at @s run function uhcp:titans/tyrion/soulflames_embrace/init
execute if score @s uhcp_titans_attack matches 1 at @s run function uhcp:titans/tyrion/gravity_globe
execute if score @s uhcp_titans_attack matches 2 as @p[gamemode=survival,distance=..16] at @s run function uhcp:titans/tyrion/runic_sentry/init
execute if score @s uhcp_titans_attack matches 1 at @s run function uhcp:titans/tyrion/voltrune/init