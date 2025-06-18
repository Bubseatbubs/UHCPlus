# Test kit
scoreboard players set @s uhcp_leave 1000

item replace entity @s container.1 with minecraft:diamond_pickaxe[minecraft:enchantments={"minecraft:efficiency":1}]
item replace entity @s container.3 with minecraft:bow[minecraft:enchantments={"minecraft:power":2}]
item replace entity @s container.4 with minecraft:water_bucket
item replace entity @s container.5 with minecraft:lava_bucket
item replace entity @s container.7 with minecraft:cobblestone 64
item replace entity @s container.8 with minecraft:golden_apple 12

loot replace entity @s container.9 loot uhcp:relics/buzzburst
loot replace entity @s container.10 loot uhcp:relics/dragons_protection
loot replace entity @s container.11 loot uhcp:relics/flux_factor
loot replace entity @s container.12 loot uhcp:relics/gravity_globe
loot replace entity @s container.13 loot uhcp:relics/runic_sentry
loot replace entity @s container.14 loot uhcp:relics/smooth_getaway
loot replace entity @s container.15 loot uhcp:relics/soulflames_embrace
loot replace entity @s container.16 loot uhcp:relics/web_o_rang
loot replace entity @s container.17 loot uhcp:relics/windfall
loot replace entity @s container.18 loot uhcp:relics/radiant/buzzburst
loot replace entity @s container.19 loot uhcp:relics/radiant/dragons_protection
loot replace entity @s container.20 loot uhcp:relics/radiant/flux_factor
loot replace entity @s container.21 loot uhcp:relics/radiant/gravity_globe
loot replace entity @s container.22 loot uhcp:relics/radiant/runic_sentry
loot replace entity @s container.23 loot uhcp:relics/radiant/smooth_getaway
loot replace entity @s container.24 loot uhcp:relics/radiant/soulflames_embrace
loot replace entity @s container.25 loot uhcp:relics/radiant/web_o_rang
loot replace entity @s container.26 loot uhcp:relics/radiant/windfall

function uhcp:testkit/enchantments
item replace entity @s weapon.offhand with minecraft:shield

function uhcp:testkit/last_row
scoreboard players reset @s uhcp_leave

effect give @s minecraft:regeneration 5 10 true
effect give @s minecraft:saturation 1 255 true

tellraw @a [{"selector":"@s","color":"gold"},{"text":" received a ","color":"gray"},{"text":"Test Kit","color":"white"},{"text":"!","color":"gray"}]
