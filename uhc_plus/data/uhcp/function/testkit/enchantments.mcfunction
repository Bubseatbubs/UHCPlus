# Enchantment reduction
execute if score %enchant_reduce uhcp_settings matches 1 run return run function uhcp:testkit/enchant_reduce

# Weapons
item replace entity @s container.0 with minecraft:diamond_sword[minecraft:enchantments={"minecraft:sharpness":3}]
item replace entity @s container.2 with minecraft:diamond_axe[minecraft:enchantments={"minecraft:sharpness":2}]
item replace entity @s container.3 with minecraft:bow[minecraft:enchantments={"minecraft:power":2}]

# Armor
item replace entity @s armor.head with minecraft:diamond_helmet[minecraft:enchantments={"minecraft:protection":2}]
item replace entity @s armor.chest with minecraft:diamond_chestplate[minecraft:enchantments={"minecraft:protection":2}]
item replace entity @s armor.legs with minecraft:diamond_leggings[minecraft:enchantments={"minecraft:protection":2}]
item replace entity @s armor.feet with minecraft:diamond_boots[minecraft:enchantments={"minecraft:protection":2}]
