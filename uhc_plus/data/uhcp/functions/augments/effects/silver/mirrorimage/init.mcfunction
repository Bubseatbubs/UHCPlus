advancement revoke @s only uhcp:augments/mirror_image
scoreboard players set @s uhcp_aug_tier 1
tag @s add UHCP_MirrorImage


execute at @s positioned ~-1 ~ ~ run function uhcp:relics/smooth_getaway/summon
execute at @s positioned ~1 ~ ~ run function uhcp:relics/smooth_getaway/summon

# Player Effects
effect give @s invisibility 30 0 true
effect give @s speed 30 0 true
effect give @s resistance 5 4 true

# Effects
particle minecraft:campfire_signal_smoke ~ ~ ~ 2 0.5 2 0.1 100 normal
particle minecraft:flash ~ ~ ~ 1 0.5 1 0.1 10 normal
playsound entity.zombie.converted_to_drowned master @a[distance=..8] ~ ~ ~ 1 0.5 0.5

# End
function uhcp:entity/armor/store_armor
tag @s add UHCP_SmoothGetaway
