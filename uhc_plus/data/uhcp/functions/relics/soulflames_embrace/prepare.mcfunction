function uhcp:relics/durability/reset
tag @s add UHCP_SoulflameEmbrace
playsound minecraft:block.beacon.power_select master @a[distance=..6] ~ ~ ~ 1 1 0.75
particle soul_fire_flame ~ ~2 ~ 0.35 0.5 0.35 0.01 30 normal
particle soul ~ ~2 ~ 0.35 0.5 0.35 0.01 10 normal