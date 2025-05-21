# Replace blocks near players
execute unless entity @e[tag=UHCP_SLBlock,distance=..6] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 minecraft:air replace minecraft:nether_portal strict
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:air replace minecraft:end_portal strict

execute unless predicate uhcp:in_stronghold run return fail
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:end_portal_frame[facing=east] replace minecraft:end_portal_frame[eye=true,facing=east] strict
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:end_portal_frame[facing=north] replace minecraft:end_portal_frame[eye=true,facing=north] strict
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:end_portal_frame[facing=south] replace minecraft:end_portal_frame[eye=true,facing=south] strict
fill ~-10 ~-10 ~-10 ~10 ~10 ~10 minecraft:end_portal_frame[facing=west] replace minecraft:end_portal_frame[eye=true,facing=west] strict
