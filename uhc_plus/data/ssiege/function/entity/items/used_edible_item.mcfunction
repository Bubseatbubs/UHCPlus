# Items with minecraft:consumable functionality
advancement revoke @s only uhcp:entity_actions/used_edible_item
scoreboard players set @s uhcp_itemCount 6
execute unless score %game uhcp_initStatus matches 1 run return run function uhcp:entity/items/lobby

# Mainhand
execute if items entity @s weapon.mainhand *[minecraft:consumable,minecraft:custom_data~{uhcp_relic:true}] at @s run return run function uhcp:entity/items/relics/mainhand
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_consumable:true}] at @s run return run function uhcp:entity/items/consumables/mainhand
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_sundisk:true}] run return run function uhcp:augments/effects/prismatic/gloryofra/state_stacks

# Offhand
execute if items entity @s weapon.offhand *[minecraft:consumable,minecraft:custom_data~{uhcp_relic:true}] at @s run return run function uhcp:entity/items/relics/offhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable:true}] at @s run return run function uhcp:entity/items/consumables/offhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_sundisk:true}] run function uhcp:augments/effects/prismatic/gloryofra/state_stacks
