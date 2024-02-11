# Fire resistance I
tag @s add UHCP_EffectNFR
execute if predicate uhcp:lava/in_lava run function uhcp:augments/milk_bucket/prismatic/netherborn/height

execute if entity @s[tag=UHCP_EffectNFR] run schedule function uhcp:augments/milk_bucket/prismatic/effect/netherborn 1t
