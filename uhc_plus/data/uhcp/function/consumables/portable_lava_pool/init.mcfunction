clear @s *[minecraft:custom_data~{uhcp_consumable:1b}] 1
execute rotated ~ 0 run summon minecraft:marker ^ ^ ^5 {Tags:["UHCP_PLPMarker"]}
playsound minecraft:item.bucket.empty_lava player @a[distance=..8] ~ ~ ~ 1 1 0.75
execute at @e[tag=UHCP_PLPMarker] run particle minecraft:dripping_lava ~ ~-2 ~ 6 5 6 0.1 100 normal
execute at @e[tag=UHCP_PLPMarker] run particle minecraft:large_smoke ~ ~-2 ~ 6 5 6 0.1 100 normal
execute at @e[tag=UHCP_PLPMarker] run fill ~2 ~-1 ~2 ~-2 ~-1 ~-2 minecraft:lava replace #uhcp:breakable
kill @e[tag=UHCP_PLPMarker]
