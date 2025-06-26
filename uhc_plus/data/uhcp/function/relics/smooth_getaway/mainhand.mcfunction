# Prevent usage
execute unless entity @s[tag=!UHCP_IsAttackTitan,tag=!UHCP_IsPanda,tag=!UHCP_IsRabbit] run return fail
execute as @s[predicate=uhcp:augments/prop_hunt/player,scores={uhcp_aug_tier=1}] run function uhcp:augments/effects/silver/prophunt/rejoin
tag @s add UHCP_Owner

# Player effects (DO NOT modify invisibility)
effect give @s minecraft:invisibility 10 1 true
effect give @s minecraft:resistance 3 5 true

# Effects
particle minecraft:campfire_signal_smoke ~ ~ ~ 2 0.5 2 0.1 100 normal
particle minecraft:flash ~ ~ ~ 1 0.5 1 0.1 10 normal
playsound minecraft:entity.zombie.converted_to_drowned master @a[distance=..8] ~ ~ ~ 1 0.5 0.5

# Radiant relic
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:true}] run return run function uhcp:relics/smooth_getaway/radiant/mainhand
scoreboard players add @s uhcp_relic_sg 1

# Summon Mirages
execute positioned ~-1 ~ ~ run function uhcp:relics/smooth_getaway/summon
execute positioned ~1 ~ ~ run function uhcp:relics/smooth_getaway/summon

# Remove item
item replace entity @s weapon.mainhand with minecraft:air

# End (UHCP_Owner removed in store_armor)
function uhcp:entity/armor/store_armor
tag @s add UHCP_SmoothGetaway
scoreboard players reset @s uhcp_leave
