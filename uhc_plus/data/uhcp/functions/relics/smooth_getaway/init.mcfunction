# Initialize
function uhcp:relics/durability/reset
function uhcp:relics/smooth_getaway/store_armor
item replace entity @s weapon.mainhand with minecraft:air

# Summon Mirages
execute at @s positioned ~-1 ~ ~ run function uhcp:relics/smooth_getaway/summon
execute at @s positioned ~1 ~ ~ run function uhcp:relics/smooth_getaway/summon
execute if score @s uhcp_augment matches 239 at @s run function uhcp:relics/smooth_getaway/shadowclone

# Player Effects
effect give @s invisibility 10 0 true
effect give @s resistance 3 5 true
execute as @a if score @s uhcp_augment matches 239 run effect give @s speed 10 1 false

# Effects
particle minecraft:campfire_signal_smoke ~ ~ ~ 2 0.5 2 0.1 100 normal
particle minecraft:flash ~ ~ ~ 1 0.5 1 0.1 10 normal
playsound entity.zombie.converted_to_drowned master @a[distance=..8] ~ ~ ~ 1 0.5 0.5

# End
tag @s add UHCP_SmoothGetaway

