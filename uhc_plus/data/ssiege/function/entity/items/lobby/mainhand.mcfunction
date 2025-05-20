# Lobby items
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby_id:1b}] run return run function uhcp:lobby/patron/menu
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby_id:2b}] run return run function uhcp:lobby/team/menu
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby_id:3b}] run return run function uhcp:lobby/readyup/ready_up_player
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby_id:4b}] run return run function uhcp:lobby/readyup/cancel
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby_id:5b}] run return run function uhcp:lobby/spectator/spectate
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby_id:6b}] run return run function uhcp:lobby/spectator/stop_spectate
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby_id:7b}] run return run function uhcp:lobby/teleport/menu
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby_id:8b}] run return run function uhcp:lobby/relic_testing/back
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby_id:9b}] run return run function uhcp:lobby/relic_testing/forward
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_lobby_id:10b}] run function uhcp:lobby/settings_display/menu
