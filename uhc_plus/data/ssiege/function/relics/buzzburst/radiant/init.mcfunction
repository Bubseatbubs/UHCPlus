tag @s add UHCP_Owner
execute anchored eyes summon minecraft:arrow run function uhcp:relics/buzzburst/radiant/arrow

playsound minecraft:entity.bee.hurt master @a[distance=..12] ~ ~ ~ 1 1 0.25
playsound minecraft:block.beehive.enter master @a[distance=..12] ~ ~ ~ 1 1 0.25
playsound minecraft:item.crossbow.shoot master @a[distance=..12] ~ ~ ~ 1 1 0.25
tag @s remove UHCP_Owner
