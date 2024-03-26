execute if score @s uhcp_titans_count matches 1 at @s positioned ~ ~1 ~ run function uhcp:titans/arachne/init
execute if score @s uhcp_titans_count matches 2 at @s positioned ~ ~1 ~ run function uhcp:titans/gigantus/init
execute if score @s uhcp_titans_count matches 3 at @s positioned ~ ~1 ~ run function uhcp:titans/fenrir/init
execute if score @s uhcp_titans_count matches 4 at @s positioned ~ ~1 ~ run function uhcp:titans/bone_colossus/init
execute if score @s uhcp_titans_count matches 5 at @s positioned ~ ~1 ~ run function uhcp:titans/giga_creeper/init
execute if score @s uhcp_titans_count matches 6 at @s positioned ~ ~1 ~ run function uhcp:titans/triton/init
execute if score @s uhcp_titans_count matches 7 at @s positioned ~ ~1 ~ run function uhcp:titans/seraphim/init
fill ~-4 ~ ~-4 ~4 ~8 ~4 air replace barrier
playsound block.end_portal.spawn master @a[distance=..16] ~ ~ ~ 1 1 0.6
particle reverse_portal ~ ~ ~ 3 3 3 0.1 100 normal
particle flash ~ ~ ~ 0.1 0.1 0.1 0.1 10 normal
forceload remove ~-6 ~-6 ~6 ~6