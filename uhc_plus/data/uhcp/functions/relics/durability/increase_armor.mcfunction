advancement revoke @s only uhcp:relics/increase_armor
execute if items entity @s armor.head *[minecraft:custom_data~{uhcp_relic:1b},minecraft:damage] run function uhcp:relics/durability/armor/helmet
execute if items entity @s armor.chest *[minecraft:custom_data~{uhcp_relic:1b},minecraft:damage] run function uhcp:relics/durability/armor/chestplate
execute if items entity @s armor.legs *[minecraft:custom_data~{uhcp_relic:1b},minecraft:damage] run function uhcp:relics/durability/armor/leggings
execute if items entity @s armor.feet *[minecraft:custom_data~{uhcp_relic:1b},minecraft:damage] run function uhcp:relics/durability/armor/boots