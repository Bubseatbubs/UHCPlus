# Mainhand
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby:true}] run return run function uhcp:entity/items/lobby/mainhand
execute if items entity @s weapon.mainhand *[minecraft:consumable,minecraft:custom_data~{uhcp_relic:true}] at @s run return run function uhcp:entity/items/lobby/relics/mainhand

# Offhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_lobby:true}] run return run function uhcp:entity/items/lobby/offhand
execute if items entity @s weapon.offhand *[minecraft:consumable,minecraft:custom_data~{uhcp_relic:true}] at @s run return run function uhcp:entity/items/lobby/relics/offhand
