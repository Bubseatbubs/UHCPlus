# Consumables
scoreboard players set @s uhcp_leave 1000
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable_id:0b}] run return run function uhcp:consumables/duplicator/offhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable_id:1b}] run return run function uhcp:consumables/portable_lava_pool/offhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable_id:2b}] run return run function uhcp:consumables/lesser_duplicator/offhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable_id:3b}] run return run function uhcp:consumables/relic_invoker/offhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable_id:4b}] run return run function uhcp:consumables/wild_feather/offhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable_id:5b}] run return run function uhcp:consumables/groovy_disc/offhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable_id:6b}] run return run function uhcp:consumables/magic_trick/offhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable_id:7b}] run return run function uhcp:consumables/web_slinger/offhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable_id:8b}] run return run function uhcp:consumables/grand_gunpowder/offhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable_id:9b}] run return run function uhcp:consumables/ferrum_scrap_metal/offhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable_id:10b}] run return run function uhcp:consumables/ragnarok_bone/offhand
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable_id:11b}] run function uhcp:consumables/high_tide/offhand

execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable_id:19b}] run function uhcp:consumables/portal_gate/offhand