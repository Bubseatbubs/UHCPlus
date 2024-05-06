clear @s
item replace entity @s container.0 with minecraft:diamond_sword[minecraft:enchantments={levels:{"minecraft:sharpness":3}}]
item replace entity @s container.1 with minecraft:diamond_pickaxe[minecraft:enchantments={levels:{"minecraft:efficiency":1}}]
item replace entity @s container.2 with minecraft:diamond_axe[minecraft:enchantments={levels:{"minecraft:sharpness":2}}]
item replace entity @s container.3 with minecraft:bow[minecraft:enchantments={levels:{"minecraft:power":2}}]
item replace entity @s container.4 with minecraft:water_bucket
item replace entity @s container.5 with minecraft:lava_bucket
item replace entity @s container.6 with minecraft:cobweb 8
item replace entity @s container.7 with minecraft:cobblestone 64
item replace entity @s container.8 with minecraft:golden_apple 12
item replace entity @s container.27 with minecraft:arrow 12

attribute @s minecraft:generic.max_health modifier add 5ae70886-031a-42b7-aa86-783c9536c746 "" 20 add_value

effect give @s minecraft:regeneration 5 10 true

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

item replace entity @s container.30 with minecraft:fishing_rod[minecraft:enchantments={levels:{"minecraft:luck_of_the_sea":5,"minecraft:lure":5,"minecraft:unbreaking":5,"minecraft:vanishing_curse":1}}] 1
item replace entity @s container.31 with minecraft:fishing_rod[minecraft:enchantments={levels:{"minecraft:luck_of_the_sea":6,"minecraft:lure":5,"minecraft:unbreaking":5,"minecraft:vanishing_curse":1}}] 1
item replace entity @s container.32 with minecraft:fishing_rod[minecraft:enchantments={levels:{"minecraft:luck_of_the_sea":10,"minecraft:lure":5,"minecraft:unbreaking":5,"minecraft:vanishing_curse":1}}] 1

item replace entity @s armor.head with minecraft:diamond_helmet[minecraft:enchantments={levels:{"minecraft:protection":2}}]
item replace entity @s armor.chest with minecraft:diamond_chestplate[minecraft:enchantments={levels:{"minecraft:protection":2}}]
item replace entity @s armor.legs with minecraft:diamond_leggings[minecraft:enchantments={levels:{"minecraft:protection":2}}]
item replace entity @s armor.feet with minecraft:diamond_boots[minecraft:enchantments={levels:{"minecraft:protection":2}}]
item replace entity @s weapon.offhand with minecraft:shield

tellraw @a [{"selector":"@s","color":"gold"},{"text":" was given a Test Kit!","color":"gray"}]
scoreboard players reset @s uhcp_testkit

tag @s add UHCP_Operator
