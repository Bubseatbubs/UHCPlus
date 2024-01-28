# Initial items
give @s minecraft:wooden_sword{solo_level:1b,solo_stage:0b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:wooden_pickaxe{solo_level:1b,solo_stage:0b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:wooden_axe{solo_level:1b,solo_stage:0b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:wooden_shovel{solo_level:1b,solo_stage:0b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:leather_helmet{solo_level:1b,solo_stage:0b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:leather_chestplate{solo_level:1b,solo_stage:0b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:leather_leggings{solo_level:1b,solo_stage:0b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:leather_boots{solo_level:1b,solo_stage:0b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:bow{solo_level:1b,solo_stage:0b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:wooden_hoe{solo_level:1b,solo_stage:0b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}

# Message
tellraw @a [{"selector":"@s","color":"blue"},{"text":" selected","color":"white"},{"text":" Solo Leveling","color":"gold"},{"text":"!","color":"white"}]

# Temporary planning/work
return fail

# Only give each tool/weapon/armor once.
# Replace all special items in inventory with what should be the same item whenever inventory_changed advancement triggers.
# Initially give next tier of item by replacing last tier of item in inventory.
# Above methods should prevent duplication.
# "Drop" unapproved items out of inventory.
# For anvils/grindstones/smithing tables: interact scoreboards combined with weird nether portal trick to close
# Clone block at head to uhcp:main, replace block with nether portal.
# Also teleport marker to head position.
# One tick later, clone back to marker.
# Let enchanting tables be used, should only be books (no interact scoreboard)

# Tests for closing anvil/grindstone/smithing table
scoreboard players set @a[tag=test,scores={uhcp_displayTime=0}] uhcp_displayTime 100
execute as @a[tag=test,scores={uhcp_displayTime=8}] at @s anchored eyes run fill ^ ^ ^ ^ ^ ^ minecraft:nether_portal replace minecraft:air
stopsound @a[tag=test,scores={uhcp_displayTime=0..6}] ambient minecraft:block.portal.trigger
execute as @a[tag=test,scores={uhcp_displayTime=7}] at @s anchored eyes run fill ^ ^ ^ ^ ^ ^ minecraft:air replace minecraft:nether_portal
scoreboard players remove @a[tag=test,scores={uhcp_displayTime=1..}] uhcp_displayTime 1

# Items for 18 upgrades:
# Stone tools
give @s minecraft:stone_pickaxe{solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:stone_axe{solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:stone_shovel{solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:stone_hoe{solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}

# Stone weapons
give @s minecraft:stone_sword{solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}

# Efficiency I on stone tools
give @s minecraft:stone_pickaxe{solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:stone_axe{solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:stone_shovel{solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:stone_hoe{solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}

# Iron tools, five max hearts
attribute @s minecraft:generic.max_health base set 50
give @s minecraft:iron_pickaxe{solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:iron_axe{solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:iron_shovel{solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:iron_hoe{solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}

# Iron weapons
give @s minecraft:iron_sword{solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}

# Iron armor
give @s minecraft:iron_helmet{solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:iron_chestplate{solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:iron_leggings{solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:iron_boots{solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}

# Sharpness I, power I on weapons
give @s minecraft:iron_sword{solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:iron_axe{solo_level:1b,solo_stage:4b,Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:bow{solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:power",lvl:1s},{id:"minecraft:mending",lvl:1s}]}

# Diamond tools, five max hearts
attribute @s minecraft:generic.max_health base set 60
give @s minecraft:diamond_pickaxe{solo_level:1b,solo_stage:4b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:diamond_axe{solo_level:1b,solo_stage:5b,Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:diamond_shovel{solo_level:1b,solo_stage:4b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:diamond_hoe{solo_level:1b,solo_stage:4b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}

# Protection I on armor
give @s minecraft:iron_helmet{solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:iron_chestplate{solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:iron_leggings{solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:iron_boots{solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}

# Diamond weapons
give @s minecraft:diamond_sword{solo_level:1b,solo_stage:4b,Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}

# Sharpness II, power II on weapons
give @s minecraft:diamond_sword{solo_level:1b,solo_stage:5b,Enchantments:[{id:"minecraft:sharpness",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:diamond_axe{solo_level:1b,solo_stage:6b,Enchantments:[{id:"minecraft:sharpness",lvl:2s},{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:bow{solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:power",lvl:2s},{id:"minecraft:mending",lvl:1s}]}

# Diamond armor, five max hearts
attribute @s minecraft:generic.max_health base set 70
give @s minecraft:diamond_helmet{solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:diamond_chestplate{solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:diamond_leggings{solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:diamond_boots{solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}

# Efficiency II on tools
give @s minecraft:diamond_pickaxe{solo_level:1b,solo_stage:5b,Enchantments:[{id:"minecraft:efficiency",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:diamond_axe{solo_level:1b,solo_stage:7b,Enchantments:[{id:"minecraft:sharpness",lvl:2s},{id:"minecraft:efficiency",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:diamond_shovel{solo_level:1b,solo_stage:5b,Enchantments:[{id:"minecraft:efficiency",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:diamond_hoe{solo_level:1b,solo_stage:5b,Enchantments:[{id:"minecraft:efficiency",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}

# Protection II on armor
give @s minecraft:diamond_helmet{solo_level:1b,solo_stage:4b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:diamond_chestplate{solo_level:1b,solo_stage:4b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:diamond_leggings{solo_level:1b,solo_stage:4b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:diamond_boots{solo_level:1b,solo_stage:4b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}

# Sharpness III, power III on weapons
give @s minecraft:diamond_sword{solo_level:1b,solo_stage:6b,Enchantments:[{id:"minecraft:sharpness",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:diamond_axe{solo_level:1b,solo_stage:8b,Enchantments:[{id:"minecraft:sharpness",lvl:3s},{id:"minecraft:efficiency",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:bow{solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:power",lvl:3s},{id:"minecraft:mending",lvl:1s}]}

# Protection III on armor, five max hearts
attribute @s minecraft:generic.max_health base set 80
give @s minecraft:diamond_helmet{solo_level:1b,solo_stage:5b,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:diamond_chestplate{solo_level:1b,solo_stage:5b,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:diamond_leggings{solo_level:1b,solo_stage:5b,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:diamond_boots{solo_level:1b,solo_stage:5b,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}

# Five max hearts
attribute @s minecraft:generic.max_health base set 90

# Netherite weapons and armor
give @s minecraft:netherite_sword{solo_level:1b,solo_stage:7b,Enchantments:[{id:"minecraft:sharpness",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:netherite_axe{solo_level:1b,solo_stage:9b,Enchantments:[{id:"minecraft:sharpness",lvl:3s},{id:"minecraft:efficiency",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:netherite_helmet{solo_level:1b,solo_stage:6b,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:netherite_chestplate{solo_level:1b,solo_stage:6b,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:netherite_leggings{solo_level:1b,solo_stage:6b,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
give @s minecraft:netherite_boots{solo_level:1b,solo_stage:6b,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
