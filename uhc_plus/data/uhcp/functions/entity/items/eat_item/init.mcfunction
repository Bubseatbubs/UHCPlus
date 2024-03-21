advancement revoke @s only uhcp:augments/using_edible_item

execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_wildfeather:1b}] at @s run return run function uhcp:augments/effects/gold/birdsofafeather/teleport
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_portablelavapool:1b}] at @s run return run function uhcp:augments/effects/silver/portablelavapool/summon
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relicinvoker:1b}] at @s run return run function uhcp:relics/relic_excavator/use
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_webslinger:1b}] at @s run return run function uhcp:titans/items/web_slinger/init
execute if items entity @s weapon.mainhand *[!damage|damage=0,minecraft:custom_data~{uhcp_radiant:2b}] at @s run return run function uhcp:relics/voltrune/hit
execute if items entity @s weapon.mainhand *[!damage|damage=0,minecraft:custom_data~{uhcp_radiant:3b}] at @s run return run function uhcp:relics/gravity_smasher/hit
execute if items entity @s weapon.mainhand *[!damage|damage=0,minecraft:custom_data~{uhcp_radiant:6b}] at @s run return run function uhcp:relics/smooth_getaway/hit
execute if items entity @s weapon.mainhand *[!damage|damage=0,minecraft:custom_data~{uhcp_radiant:7b}] at @s run return run function uhcp:relics/thread_of_fate/dash

execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_wildfeather:1b}] at @s run return run function uhcp:augments/effects/gold/birdsofafeather/teleport
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_portablelavapool:1b}] at @s run return run function uhcp:augments/effects/silver/portablelavapool/summon
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_relicinvoker:1b}] at @s run return run function uhcp:relics/relic_excavator/use
execute if items entity @s weapon.offhand *[minecraft:custom_data~{uhcp_webslinger:1b}] at @s run return run function uhcp:titans/items/web_slinger/init