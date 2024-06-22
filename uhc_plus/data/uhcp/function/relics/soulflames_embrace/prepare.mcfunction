execute unless score %game uhcp_initStatus matches 1 run return run function uhcp:relics/soulflames_embrace/lobby
function uhcp:relics/durability/reset
tag @s add UHCP_SoulflameEmbrace
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:1b}] run tag @s add UHCP_PreparePhantomPains
playsound minecraft:block.beacon.power_select master @a[distance=..6] ~ ~ ~ 1 1 0.75
particle minecraft:soul_fire_flame ~ ~2 ~ 0.35 0.5 0.35 0.01 30 normal
particle minecraft:soul ~ ~2 ~ 0.35 0.5 0.35 0.01 10 normal
