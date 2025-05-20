# Relics
scoreboard players set @s uhcp_leave 1000
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relic_id:0b}] run return run function uhcp:relics/buzzburst/mainhand
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relic_id:1b}] run return run function uhcp:relics/soulflames_embrace/mainhand
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relic_id:2b}] run return run function uhcp:relics/voltrune/mainhand
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relic_id:3b}] run return run function uhcp:relics/gravity_globe/mainhand
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relic_id:4b}] run return run function uhcp:relics/runic_sentry/mainhand
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relic_id:5b}] run return run function uhcp:relics/windfall/mainhand/init
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relic_id:6b}] run return run function uhcp:relics/smooth_getaway/mainhand
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relic_id:7b}] run return run function uhcp:relics/web_o_rang/mainhand
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_relic_id:8b}] run function uhcp:relics/dragons_protection/mainhand
