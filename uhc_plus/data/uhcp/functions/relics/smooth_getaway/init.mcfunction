# Initialize
execute if entity @s[tag=UHCP_SmoothGetaway,tag=UHCP_ShadowClone] run function uhcp:relics/smooth_getaway/return_shadowclone

execute if entity @s[tag=UHCP_SmoothGetaway,tag=!UHCP_ShadowClone] unless score @s uhcp_augment matches 239 run function uhcp:entity/items/loot/summon
execute if entity @s[tag=UHCP_SmoothGetaway,tag=!UHCP_ShadowClone] unless score @s uhcp_augment matches 239 run loot replace entity @e[type=minecraft:item,tag=UHCP_NewLoot,sort=nearest,limit=1] contents loot uhcp:relics/smooth_getaway/damaged
execute if entity @s[tag=UHCP_SmoothGetaway,tag=!UHCP_ShadowClone] unless score @s uhcp_augment matches 239 run function uhcp:entity/items/loot/finish
execute unless entity @s[tag=!UHCP_IsPanda,tag=!UHCP_IsRabbit] run return 0
function uhcp:relics/durability/reset

# Summon Mirages
execute at @s positioned ~-1 ~ ~ run function uhcp:relics/smooth_getaway/summon
execute at @s positioned ~1 ~ ~ run function uhcp:relics/smooth_getaway/summon
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:1b}] at @s run function uhcp:relics/smooth_getaway/shadowclone

# Remove item
item replace entity @s weapon.mainhand with minecraft:air

# Player Effects
effect give @s invisibility 10 0 true
effect give @s resistance 3 5 true
execute as @a[scores={uhcp_augment=239}] run effect give @s minecraft:speed 10 1 false

# Effects
particle minecraft:campfire_signal_smoke ~ ~ ~ 2 0.5 2 0.1 100 normal
particle minecraft:flash ~ ~ ~ 1 0.5 1 0.1 10 normal
playsound entity.zombie.converted_to_drowned master @a[distance=..8] ~ ~ ~ 1 0.5 0.5

# End
function uhcp:entity/armor/store_armor
tag @s add UHCP_SmoothGetaway
