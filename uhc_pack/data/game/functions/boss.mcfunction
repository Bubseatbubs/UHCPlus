#Boss

clear @s
item replace entity @s armor.head with minecraft:netherite_helmet{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:5},{id:"minecraft:respiration",lvl:3}]}
item replace entity @s armor.chest with minecraft:netherite_chestplate{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:5}]}
item replace entity @s armor.legs with minecraft:netherite_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:projectile_protection",lvl:5}]}
item replace entity @s armor.feet with minecraft:netherite_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:5},{id:"minecraft:depth_strider",lvl:3},{id:"minecraft:feather_falling",lvl:4}]}
item replace entity @s weapon.offhand with minecraft:shield{Unbreakable:1b}

give @s netherite_axe{display:{Name:'{"text":"Cosmic Smasher"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:10},{id:"minecraft:fire_aspect",lvl:2},{id:"minecraft:efficiency",lvl:5}]} 1
give @s minecraft:bow{Unbreakable:1b,Enchantments:[{id:"power",lvl:10},{id:"minecraft:flame",lvl:1},{id:"minecraft:infinity",lvl:1}]}
give @s minecraft:enchanted_golden_apple 64
give @s minecraft:water_bucket
give @s minecraft:redstone_block 128
give @s minecraft:lava_bucket 2
give @s minecraft:crossbow{Unbreakable:1b,Enchantments:[{id:"minecraft:quick_charge",lvl:5},{id:"minecraft:piercing",lvl:4}]}
give @s minecraft:arrow 1728

effect give @s minecraft:fire_resistance 7200 0 true
effect give @s minecraft:resistance 7200 1 true
effect give @a minecraft:glowing 7200 0 true
gamemode survival @s
