playsound minecraft:item.bucket.empty_lava player @a[distance=..8] ~ ~ ~ 1 1 0.75
particle minecraft:dripping_lava ~ ~-2 ~ 6 5 6 0.1 100 normal
particle minecraft:large_smoke ~ ~-2 ~ 6 5 6 0.1 100 normal

scoreboard players set %containers uhcp_settings 0
fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 minecraft:lava replace #uhcp:containers destroy
fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 minecraft:lava replace #uhcp:breakable
scoreboard players set %containers uhcp_settings 1
