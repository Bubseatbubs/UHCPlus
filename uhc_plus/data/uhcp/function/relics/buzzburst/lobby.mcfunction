# Version of relic that runs in lobby
execute store result score @s uhcp_initStatus run data get entity @s Pos[1]
execute unless score @s uhcp_initStatus matches 273..282 run return fail
tag @s add UHCP_Owner
execute summon minecraft:arrow run function uhcp:relics/buzzburst/arrow

# Assign ID if player doesn't have one already
execute unless score @s uhcp_id = @s uhcp_id run function uhcp:start/id/assign

playsound minecraft:entity.bee.hurt master @a[distance=..12] ~ ~ ~ 1 1 0.25
playsound minecraft:block.beehive.enter master @a[distance=..12] ~ ~ ~ 1 1 0.25
playsound minecraft:item.crossbow.shoot master @a[distance=..12] ~ ~ ~ 1 1 0.25
tag @s remove UHCP_Owner
