# Initialize
execute unless score %game uhcp_initStatus matches 1 run return run function uhcp:relics/smooth_getaway/lobby
execute as @s[tag=UHCP_SmoothGetaway,tag=!UHCP_ShadowClone] run function uhcp:entity/items/loot/summon
execute as @s[tag=UHCP_SmoothGetaway,tag=!UHCP_ShadowClone] run loot replace entity @n[type=minecraft:item,tag=UHCP_NewLoot] contents loot uhcp:relics/smooth_getaway/damaged
execute as @s[tag=UHCP_SmoothGetaway,tag=!UHCP_ShadowClone] run function uhcp:entity/items/loot/finish

execute as @s[tag=UHCP_SmoothGetaway,tag=UHCP_ShadowClone] run function uhcp:relics/smooth_getaway/return_shadowclone
execute unless entity @s[tag=!UHCP_IsPanda,tag=!UHCP_IsRabbit] run return 0
function uhcp:relics/durability/reset

# Summon Mirages
execute at @s positioned ~-1 ~ ~ run function uhcp:relics/smooth_getaway/summon
execute at @s positioned ~1 ~ ~ run function uhcp:relics/smooth_getaway/summon
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:1b}] at @s run function uhcp:relics/smooth_getaway/shadowclone

# Remove item
item replace entity @s weapon.mainhand with minecraft:air

# Player Effects
effect clear @s minecraft:invisibility
effect give @s minecraft:invisibility 10 0 true
effect give @s minecraft:resistance 3 5 true
execute as @a[scores={uhcp_augment=239}] run effect give @s minecraft:speed 10 1 false

# Effects
particle minecraft:campfire_signal_smoke ~ ~ ~ 2 0.5 2 0.1 100 normal
particle minecraft:flash ~ ~ ~ 1 0.5 1 0.1 10 normal
playsound minecraft:entity.zombie.converted_to_drowned master @a[distance=..8] ~ ~ ~ 1 0.5 0.5

# End
function uhcp:entity/armor/store_armor
tag @s add UHCP_SmoothGetaway
