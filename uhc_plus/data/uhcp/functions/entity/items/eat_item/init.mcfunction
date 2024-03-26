advancement revoke @s only uhcp:augments/using_edible_item
scoreboard players set @s uhcp_itemCount 4

# Relics
execute if items entity @s weapon.mainhand *[!damage|damage=0,minecraft:custom_data~{uhcp_radiant:0b}] at @s run return run function uhcp:relics/buzzburst/init
execute if items entity @s weapon.mainhand *[!damage|damage=0,minecraft:custom_data~{uhcp_radiant:1b}] at @s run return run function uhcp:relics/soulflames_embrace/prepare
execute if items entity @s weapon.mainhand *[!damage|damage=0,minecraft:custom_data~{uhcp_radiant:2b}] at @s run return run function uhcp:relics/voltrune/init
execute if items entity @s weapon.mainhand *[!damage|damage=0,minecraft:custom_data~{uhcp_radiant:3b}] at @s run return run function uhcp:relics/gravity_globe/init
execute if items entity @s weapon.mainhand *[!damage|damage=0,minecraft:custom_data~{uhcp_radiant:4b}] at @s run return run function uhcp:relics/runic_sentry/init
execute if items entity @s weapon.mainhand *[!damage|damage=0,minecraft:custom_data~{uhcp_radiant:5b}] at @s run return run function uhcp:relics/the_harvester/init
execute if items entity @s weapon.mainhand *[!damage|damage=0,minecraft:custom_data~{uhcp_radiant:6b}] at @s run return run function uhcp:relics/smooth_getaway/init
execute if items entity @s weapon.mainhand *[!damage|damage=0,minecraft:custom_data~{uhcp_radiant:7b}] at @s run return run function uhcp:relics/web_o_rang/init
execute if items entity @s weapon.mainhand *[!damage|damage=0,minecraft:custom_data~{uhcp_radiant:8b}] at @s run return run function uhcp:relics/dragons_protection/init

# Consumables
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_wildfeather:1b}] at @s run return run function uhcp:augments/effects/gold/birdsofafeather/teleport
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_portablelavapool:1b}] at @s run return run function uhcp:augments/effects/silver/portablelavapool/summon
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relicinvoker:1b}] at @s run return run function uhcp:relics/relic_excavator/use

# Lobby Items
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby:1b}] at @s run return run function uhcp:lobby/patron/menu
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby:2b}] at @s run return run function uhcp:lobby/team/menu
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby:3b}] at @s run return run function uhcp:lobby/readyup/ready_up_player
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby:4b}] at @s run return run function uhcp:lobby/readyup/cancel
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby:5b}] at @s run return run function uhcp:lobby/spectator/spectate
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby:6b}] at @s run return run function uhcp:lobby/spectator/stop_spectate


execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_wildfeather:1b}] at @s run return run function uhcp:augments/effects/gold/birdsofafeather/teleport
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_portablelavapool:1b}] at @s run return run function uhcp:augments/effects/silver/portablelavapool/summon
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_relicinvoker:1b}] at @s run return run function uhcp:relics/relic_excavator/use
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_webslinger:1b}] at @s run return run function uhcp:titans/items/web_o_rang/init
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_lobby:1b}] at @s run return run function uhcp:lobby/patron/menu