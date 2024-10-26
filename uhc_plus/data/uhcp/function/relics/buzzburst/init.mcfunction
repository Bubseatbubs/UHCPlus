execute unless score %game uhcp_initStatus matches 1 run return run function uhcp:relics/buzzburst/lobby
tag @s add UHCP_Owner
function uhcp:relics/durability/reset
execute anchored eyes summon minecraft:arrow run function uhcp:relics/buzzburst/arrow

# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/id/assign

playsound minecraft:entity.bee.hurt master @a[distance=..12] ~ ~ ~ 1 1 0.25
playsound minecraft:block.beehive.enter master @a[distance=..12] ~ ~ ~ 1 1 0.25
playsound minecraft:item.crossbow.shoot master @a[distance=..12] ~ ~ ~ 1 1 0.25
tag @s remove UHCP_Owner
