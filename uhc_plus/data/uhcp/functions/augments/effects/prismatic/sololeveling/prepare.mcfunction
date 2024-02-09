# Reset upgrade status
scoreboard players set @a uhcp_a_tier 0
tag @a remove UHCP_SLUpg
tag @a remove UHCP_SLAxe
tag @a remove UHCP_SLBoots
tag @a remove UHCP_SLBow
tag @a remove UHCP_SLChest
tag @a remove UHCP_SLHelm
tag @a remove UHCP_SLHoe
tag @a remove UHCP_SLLegs
tag @a remove UHCP_SLPick
tag @a remove UHCP_SLShovel
tag @a remove UHCP_SLSword

# Tool list
data modify storage uhcp:solo_level ToolList set value ["minecraft:bow","minecraft:chainmail_boots","minecraft:chainmail_chestplate","minecraft:chainmail_helmet","minecraft:chainmail_leggings","minecraft:crossbow","minecraft:diamond_axe","minecraft:diamond_boots","minecraft:diamond_chestplate","minecraft:diamond_helmet","minecraft:diamond_hoe","minecraft:diamond_leggings","minecraft:diamond_pickaxe","minecraft:diamond_shovel","minecraft:diamond_sword","minecraft:golden_axe","minecraft:golden_boots","minecraft:golden_chestplate","minecraft:golden_helmet","minecraft:golden_hoe","minecraft:golden_leggings","minecraft:golden_pickaxe","minecraft:golden_shovel","minecraft:golden_sword","minecraft:iron_axe","minecraft:iron_boots","minecraft:iron_chestplate","minecraft:iron_helmet","minecraft:iron_hoe","minecraft:iron_leggings","minecraft:iron_pickaxe","minecraft:iron_shovel","minecraft:iron_sword","minecraft:leather_boots","minecraft:leather_chestplate","minecraft:leather_helmet","minecraft:leather_leggings","minecraft:netherite_axe","minecraft:netherite_boots","minecraft:netherite_chestplate","minecraft:netherite_helmet","minecraft:netherite_hoe","minecraft:netherite_leggings","minecraft:netherite_pickaxe","minecraft:netherite_shovel","minecraft:netherite_sword","minecraft:stone_axe","minecraft:stone_hoe","minecraft:stone_pickaxe","minecraft:stone_shovel","minecraft:stone_sword","minecraft:wooden_axe","minecraft:wooden_hoe","minecraft:wooden_pickaxe","minecraft:wooden_shovel","minecraft:wooden_sword"]

# Solo leveling items:
data modify storage uhcp:solo_level Item set value [[],[],[],[],[],[],[],[],[],[]]

# Stone tools
item replace block 0 0 0 container.0 with minecraft:stone_pickaxe{solo_item:1b,solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[1] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:stone_axe{solo_item:2b,solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[2] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:stone_shovel{solo_item:3b,solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[3] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:stone_hoe{solo_item:9b,solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[9] append from block 0 0 0 Items[0]

# Stone weapons
item replace block 0 0 0 container.0 with minecraft:stone_sword{solo_item:0b,solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[0] append from block 0 0 0 Items[0]

# Efficiency I on stone tools
item replace block 0 0 0 container.0 with minecraft:stone_pickaxe{solo_item:1b,solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[1] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:stone_axe{solo_item:2b,solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[2] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:stone_shovel{solo_item:3b,solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[3] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:stone_hoe{solo_item:9b,solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[9] append from block 0 0 0 Items[0]

# Iron tools, five max hearts
#attribute @s minecraft:generic.max_health base set 50
item replace block 0 0 0 container.0 with minecraft:iron_pickaxe{solo_item:1b,solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[1] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:iron_axe{solo_item:2b,solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[2] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:iron_shovel{solo_item:3b,solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[3] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:iron_hoe{solo_item:9b,solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[9] append from block 0 0 0 Items[0]

# Iron weapons
item replace block 0 0 0 container.0 with minecraft:iron_sword{solo_item:0b,solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[0] append from block 0 0 0 Items[0]

# Iron armor
item replace block 0 0 0 container.0 with minecraft:iron_helmet{solo_item:4b,solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[4] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:iron_chestplate{solo_item:5b,solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[5] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:iron_leggings{solo_item:6b,solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[6] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:iron_boots{solo_item:7b,solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[7] append from block 0 0 0 Items[0]

# Sharpness I, power I on weapons
item replace block 0 0 0 container.0 with minecraft:iron_sword{solo_item:0b,solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[0] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:iron_axe{solo_item:2b,solo_level:1b,solo_stage:4b,Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[2] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:bow{solo_item:8b,solo_level:1b,solo_stage:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:power",lvl:1s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[8] append from block 0 0 0 Items[0]

# Diamond tools, five max hearts
#attribute @s minecraft:generic.max_health base set 60
item replace block 0 0 0 container.0 with minecraft:diamond_pickaxe{solo_item:1b,solo_level:1b,solo_stage:4b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[1] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:diamond_axe{solo_item:2b,solo_level:1b,solo_stage:5b,Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[2] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:diamond_shovel{solo_item:3b,solo_level:1b,solo_stage:4b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[3] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:diamond_hoe{solo_item:9b,solo_level:1b,solo_stage:4b,Enchantments:[{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[9] append from block 0 0 0 Items[0]

# Protection I on armor
item replace block 0 0 0 container.0 with minecraft:iron_helmet{solo_item:4b,solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[4] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:iron_chestplate{solo_item:5b,solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[5] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:iron_leggings{solo_item:6b,solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[6] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:iron_boots{solo_item:7b,solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[7] append from block 0 0 0 Items[0]

# Diamond weapons
item replace block 0 0 0 container.0 with minecraft:diamond_sword{solo_item:0b,solo_level:1b,solo_stage:4b,Enchantments:[{id:"minecraft:sharpness",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[0] append from block 0 0 0 Items[0]

# Sharpness II, power II on weapons
item replace block 0 0 0 container.0 with minecraft:diamond_sword{solo_item:0b,solo_level:1b,solo_stage:5b,Enchantments:[{id:"minecraft:sharpness",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[0] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:diamond_axe{solo_item:2b,solo_level:1b,solo_stage:6b,Enchantments:[{id:"minecraft:sharpness",lvl:2s},{id:"minecraft:efficiency",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[2] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:bow{solo_item:8b,solo_level:1b,solo_stage:2b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:power",lvl:2s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[8] append from block 0 0 0 Items[0]

# Diamond armor, five max hearts
#attribute @s minecraft:generic.max_health base set 70
item replace block 0 0 0 container.0 with minecraft:diamond_helmet{solo_item:4b,solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[4] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:diamond_chestplate{solo_item:5b,solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[5] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:diamond_leggings{solo_item:6b,solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[6] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:diamond_boots{solo_item:7b,solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[7] append from block 0 0 0 Items[0]

# Efficiency II on tools
item replace block 0 0 0 container.0 with minecraft:diamond_pickaxe{solo_item:1b,solo_level:1b,solo_stage:5b,Enchantments:[{id:"minecraft:efficiency",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[1] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:diamond_axe{solo_item:2b,solo_level:1b,solo_stage:7b,Enchantments:[{id:"minecraft:sharpness",lvl:2s},{id:"minecraft:efficiency",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[2] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:diamond_shovel{solo_item:3b,solo_level:1b,solo_stage:5b,Enchantments:[{id:"minecraft:efficiency",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[3] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:diamond_hoe{solo_item:9b,solo_level:1b,solo_stage:5b,Enchantments:[{id:"minecraft:efficiency",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[9] append from block 0 0 0 Items[0]

# Protection II on armor
item replace block 0 0 0 container.0 with minecraft:diamond_helmet{solo_item:4b,solo_level:1b,solo_stage:4b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[4] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:diamond_chestplate{solo_item:5b,solo_level:1b,solo_stage:4b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[5] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:diamond_leggings{solo_item:6b,solo_level:1b,solo_stage:4b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[6] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:diamond_boots{solo_item:7b,solo_level:1b,solo_stage:4b,Enchantments:[{id:"minecraft:protection",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[7] append from block 0 0 0 Items[0]

# Sharpness III, power III on weapons
item replace block 0 0 0 container.0 with minecraft:diamond_sword{solo_item:0b,solo_level:1b,solo_stage:6b,Enchantments:[{id:"minecraft:sharpness",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[0] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:diamond_axe{solo_item:2b,solo_level:1b,solo_stage:8b,Enchantments:[{id:"minecraft:sharpness",lvl:3s},{id:"minecraft:efficiency",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[2] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:bow{solo_item:8b,solo_level:1b,solo_stage:3b,Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:power",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[8] append from block 0 0 0 Items[0]

# Protection III on armor, five max hearts
#attribute @s minecraft:generic.max_health base set 80
item replace block 0 0 0 container.0 with minecraft:diamond_helmet{solo_item:4b,solo_level:1b,solo_stage:5b,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[4] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:diamond_chestplate{solo_item:5b,solo_level:1b,solo_stage:5b,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[5] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:diamond_leggings{solo_item:6b,solo_level:1b,solo_stage:5b,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[6] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:diamond_boots{solo_item:7b,solo_level:1b,solo_stage:5b,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[7] append from block 0 0 0 Items[0]

# Five max hearts
#attribute @s minecraft:generic.max_health base set 90

# Netherite weapons and armor
item replace block 0 0 0 container.0 with minecraft:netherite_sword{solo_item:0b,solo_level:1b,solo_stage:7b,Enchantments:[{id:"minecraft:sharpness",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[0] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:netherite_axe{solo_item:2b,solo_level:1b,solo_stage:9b,Enchantments:[{id:"minecraft:sharpness",lvl:3s},{id:"minecraft:efficiency",lvl:2s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[2] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:netherite_helmet{solo_item:4b,solo_level:1b,solo_stage:6b,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[4] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:netherite_chestplate{solo_item:5b,solo_level:1b,solo_stage:6b,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[5] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:netherite_leggings{solo_item:6b,solo_level:1b,solo_stage:6b,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[6] append from block 0 0 0 Items[0]
item replace block 0 0 0 container.0 with minecraft:netherite_boots{solo_item:7b,solo_level:1b,solo_stage:6b,Enchantments:[{id:"minecraft:protection",lvl:3s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}]}
data modify storage uhcp:solo_level Item[7] append from block 0 0 0 Items[0]

# Remove slot data
data remove storage uhcp:solo_level Item[][].Slot
