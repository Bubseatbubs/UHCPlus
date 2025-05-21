# Replace portals near ender pearls
execute unless entity @e[tag=UHCP_SLBlock,distance=..7] run fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air replace minecraft:nether_portal strict
fill ~-4 ~-4 ~-4 ~4 ~4 ~4 minecraft:air replace minecraft:end_portal strict
