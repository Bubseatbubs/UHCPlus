advancement revoke @s only uhcp:entity_actions/used_edible_item
scoreboard players set @s uhcp_itemCount 6

# Augments
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_sundisk:1b}] at @s run return run function uhcp:augments/effects/prismatic/gloryofra/state_stacks

# Augments (Offhand)
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_sundisk:1b}] at @s run return run function uhcp:augments/effects/prismatic/gloryofra/state_stacks

# Relics
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relic_id:0b},!minecraft:damage|minecraft:damage=0] at @s run return run function uhcp:relics/buzzburst/init
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relic_id:1b},!minecraft:damage|minecraft:damage=0] at @s run return run function uhcp:relics/soulflames_embrace/prepare
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relic_id:2b},!minecraft:damage|minecraft:damage=0] at @s run return run function uhcp:relics/voltrune/init
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relic_id:3b},!minecraft:damage|minecraft:damage=0] at @s run return run function uhcp:relics/gravity_globe/init
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relic_id:4b},!minecraft:damage|minecraft:damage=0] at @s run return run function uhcp:relics/runic_sentry/init
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relic_id:5b},!minecraft:damage|minecraft:damage=0] at @s run return run function uhcp:relics/windfall/init
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relic_id:6b},!minecraft:damage|minecraft:damage=0] at @s run return run function uhcp:relics/smooth_getaway/init
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relic_id:7b},!minecraft:damage|minecraft:damage=0] at @s run return run function uhcp:relics/web_o_rang/init
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relic_id:8b},!minecraft:damage|minecraft:damage=0] at @s run return run function uhcp:relics/dragons_protection/init

# Consumables
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_consumable:0b}] at @s run return run function uhcp:consumables/duplicator/init
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_consumable:1b}] at @s run return run function uhcp:consumables/portable_lava_pool/init
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_consumable:2b}] at @s run return run function uhcp:consumables/lesser_duplicator/init
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_consumable:3b}] at @s run return run function uhcp:consumables/relic_invoker/use
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_consumable:4b}] at @s run return run function uhcp:consumables/wild_feather/init
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_consumable:7b}] at @s run return run function uhcp:consumables/groovy_disc/init
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_consumable:12b}] at @s run return run function uhcp:consumables/magic_trick/init
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_consumable:14b}] at @s run return run function uhcp:consumables/web_slinger/init
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_consumable:15b}] at @s run return run function uhcp:consumables/grand_gunpowder/init
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_consumable:16b}] at @s run return run function uhcp:consumables/ferrum_scrap_metal/init
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_consumable:17b}] at @s run return run function uhcp:consumables/ragnarok_bone/init
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_consumable:18b}] at @s run return run function uhcp:consumables/high_tide/init

# Consumables (Offhand)
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable:1b}] at @s run return run function uhcp:consumables/portable_lava_pool/init
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable:3b}] at @s run return run function uhcp:consumables/relic_invoker/use
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable:4b}] at @s run return run function uhcp:consumables/wild_feather/init
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable:7b}] at @s run return run function uhcp:consumables/groovy_disc/init
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable:12b}] at @s run return run function uhcp:consumables/magic_trick/init
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_consumable:14b}] at @s run return run function uhcp:consumables/web_slinger/init

# Lobby Items
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby:1b}] at @s run return run function uhcp:lobby/patron/menu
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby:2b}] at @s run return run function uhcp:lobby/team/menu
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby:3b}] at @s run return run function uhcp:lobby/readyup/ready_up_player
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby:4b}] at @s run return run function uhcp:lobby/readyup/cancel
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby:5b}] at @s run return run function uhcp:lobby/spectator/spectate
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby:6b}] at @s run return run function uhcp:lobby/spectator/stop_spectate
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby:7b}] at @s run return run function uhcp:lobby/teleport/menu
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby:8b}] at @s run return run function uhcp:lobby/relic_testing/back
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby:9b}] at @s run return run function uhcp:lobby/relic_testing/forward
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby:10b}] at @s run return run function uhcp:lobby/settings_display/menu
