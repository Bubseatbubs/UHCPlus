# Initial items
item replace entity @s container.0 with minecraft:wooden_sword[minecraft:custom_data={solo_item:0b,solo_level:1b,solo_stage:0b,uhcp_instantpickup:1b},minecraft:enchantments={levels:{"minecraft:unbreaking":3,"minecraft:mending":1}}]
item replace entity @s container.1 with minecraft:wooden_pickaxe[minecraft:custom_data={solo_item:1b,solo_level:1b,solo_stage:0b,uhcp_instantpickup:1b},minecraft:enchantments={levels:{"minecraft:unbreaking":3,"minecraft:mending":1}}]
item replace entity @s container.2 with minecraft:wooden_axe[minecraft:custom_data={solo_item:2b,solo_level:1b,solo_stage:0b,uhcp_instantpickup:1b},minecraft:enchantments={levels:{"minecraft:unbreaking":3,"minecraft:mending":1}}]
item replace entity @s container.3 with minecraft:wooden_shovel[minecraft:custom_data={solo_item:3b,solo_level:1b,solo_stage:0b,uhcp_instantpickup:1b},minecraft:enchantments={levels:{"minecraft:unbreaking":3,"minecraft:mending":1}}]
item replace entity @s armor.head with minecraft:leather_helmet[minecraft:custom_data={solo_item:4b,solo_level:1b,solo_stage:0b,uhcp_instantpickup:1b},minecraft:enchantments={levels:{"minecraft:unbreaking":3,"minecraft:mending":1,"minecraft:binding_curse":1}}]
item replace entity @s armor.chest with minecraft:leather_chestplate[minecraft:custom_data={solo_item:5b,solo_level:1b,solo_stage:0b,uhcp_instantpickup:1b},minecraft:enchantments={levels:{"minecraft:unbreaking":3,"minecraft:mending":1,"minecraft:binding_curse":1}}]
item replace entity @s armor.legs with minecraft:leather_leggings[minecraft:custom_data={solo_item:6b,solo_level:1b,solo_stage:0b,uhcp_instantpickup:1b},minecraft:enchantments={levels:{"minecraft:unbreaking":3,"minecraft:mending":1,"minecraft:binding_curse":1}}]
item replace entity @s armor.feet with minecraft:leather_boots[minecraft:custom_data={solo_item:7b,solo_level:1b,solo_stage:0b,uhcp_instantpickup:1b},minecraft:enchantments={levels:{"minecraft:unbreaking":3,"minecraft:mending":1,"minecraft:binding_curse":1}}]
item replace entity @s container.8 with minecraft:bow[minecraft:custom_data={solo_item:8b,solo_level:1b,solo_stage:0b,uhcp_instantpickup:1b},minecraft:enchantments={levels:{"minecraft:unbreaking":3,"minecraft:mending":1}}]
item replace entity @s container.4 with minecraft:wooden_hoe[minecraft:custom_data={solo_item:9b,solo_level:1b,solo_stage:0b,uhcp_instantpickup:1b},minecraft:enchantments={levels:{"minecraft:unbreaking":3,"minecraft:mending":1}}]
item replace entity @s container.5 with minecraft:written_book[minecraft:custom_data={solo_book:1b,uhcp_instantpickup:1b},minecraft:item_name='{"text":"Solo Leveling Guide","color":"dark_gray","bold":true}',minecraft:lore=['{"text":"Displays each level milestone and the reward given."}'],minecraft:written_book_content={title:"Solo Leveling Guide",author:"",generation:0,resolved:1b,pages:['[{"text":"[LV 2] ","color":"blue","italic":false},{"text":"Stone Tools ⛏\\n","color":"gray"},{"text":"[LV 4] ","color":"blue","italic":false},{"text":"Stone Weapons ⚔\\n","color":"gray"},{"text":"[LV 6] ","color":"blue","italic":false},{"text":"Efficiency I ⛏\\n","color":"dark_purple"},{"text":"[LV 8] ","color":"blue","italic":false},{"text":"Iron ⛏\\n","color":"gray"},{"text":"[LV 10] ","color":"blue","italic":false},{"text":"Iron ⚔,","color":"gray"},{"text":" 2 Golden Apples\\n","color":"gold"},{"text":"[LV 12] ","color":"blue","italic":false},{"text":"Iron Armor ⛊\\n","color":"gray"},{"text":"[LV 14] ","color":"blue","italic":false},{"text":"Sharpness I / Power I ⚔\\n","color":"dark_purple"},{"text":"[LV 16] ","color":"blue","italic":false},{"text":"Diamond ⛏\\n","color":"gray"},{"text":"[LV 18] ","color":"blue","italic":false},{"text":"Protection I ⛊","color":"dark_purple"}]','[{"text":"[LV 20] ","color":"blue","italic":false},{"text":"Diamond ⚔,","color":"gray"},{"text":"[LV 22] ","color":"blue","italic":false},{"text":"Sharpness II / Power II ⚔\\n","color":"dark_purple"},{"text":"[LV 24] ","color":"blue","italic":false},{"text":"Diamond ⛊\\n","color":"gray"},{"text":"[LV 26] ","color":"blue","italic":false},{"text":"Efficiency II ⛏\\n","color":"dark_purple"},{"text":"[LV 28] ","color":"blue","italic":false},{"text":"Protection II ⛊\\n","color":"dark_purple"},{"text":"[LV 30] ","color":"blue","italic":false},{"text":"Sharpness III / Power III ⚔,","color":"dark_purple"},{"text":" 2 Golden Apples\\n","color":"gold"},{"text":"[LV 34] ","color":"blue","italic":false},{"text":"Protection III ⛊\\n","color":"dark_purple"},{"text":"[LV 38] ","color":"blue","italic":false},{"text":"Netherite ⛏\\n","color":"gray"}]','[{"text":""},{"text":"[LV 46] ","color":"blue","italic":false},{"text":"Netherite ⛊\\n","color":"gray"},{"text":"[LV 54] ","color":"blue","italic":false},{"text":"Netherite ⚔\\n","color":"gray"},{"text":"[LV 62] ","color":"blue","italic":false},{"text":"Sharpness IV / Power IV ⚔\\n","color":"dark_purple"},{"text":"[LV 70] ","color":"blue","italic":false},{"text":"Protection IV ⛊\\n","color":"dark_purple"},{"text":"[LV 78] ","color":"blue","italic":false},{"text":"Permanent Resistance\\n","color":"#A2AD09"},{"text":"[LV 86] ","color":"blue","italic":false},{"text":"Permanent Speed\\n","color":"#A2AD09"},{"text":"[LV 94] ","color":"blue","italic":false},{"text":"Permanent Strength\\n","color":"#A2AD09"},{"text":"[LV 100] ","color":"blue","italic":false},{"text":"Enchanted Golden Apple","color":"gold","bold":true}]']}]

# Current upgrade stage
scoreboard players set @s uhcp_aug_tier 0

# Remove tags
tag @s remove UHCP_SLUpg
tag @s remove UHCP_SLAxe
tag @s remove UHCP_SLBoots
tag @s remove UHCP_SLBow
tag @s remove UHCP_SLChest
tag @s remove UHCP_SLHelm
tag @s remove UHCP_SLHoe
tag @s remove UHCP_SLLegs
tag @s remove UHCP_SLPick
tag @s remove UHCP_SLShovel
tag @s remove UHCP_SLSword

# Remove Recipes
recipe take @s minecraft:bow
recipe take @s minecraft:chainmail_boots
recipe take @s minecraft:chainmail_chestplate
recipe take @s minecraft:chainmail_helmet
recipe take @s minecraft:chainmail_leggings
recipe take @s minecraft:crossbow
recipe take @s minecraft:diamond_axe
recipe take @s minecraft:diamond_boots
recipe take @s minecraft:diamond_chestplate
recipe take @s minecraft:diamond_helmet
recipe take @s minecraft:diamond_hoe
recipe take @s minecraft:diamond_leggings
recipe take @s minecraft:diamond_pickaxe
recipe take @s minecraft:diamond_shovel
recipe take @s minecraft:diamond_sword
recipe take @s minecraft:golden_axe
recipe take @s minecraft:golden_boots
recipe take @s minecraft:golden_chestplate
recipe take @s minecraft:golden_helmet
recipe take @s minecraft:golden_hoe
recipe take @s minecraft:golden_leggings
recipe take @s minecraft:golden_pickaxe
recipe take @s minecraft:golden_shovel
recipe take @s minecraft:golden_sword
recipe take @s minecraft:iron_axe
recipe take @s minecraft:iron_boots
recipe take @s minecraft:iron_chestplate
recipe take @s minecraft:iron_helmet
recipe take @s minecraft:iron_hoe
recipe take @s minecraft:iron_leggings
recipe take @s minecraft:iron_pickaxe
recipe take @s minecraft:iron_shovel
recipe take @s minecraft:iron_sword
recipe take @s minecraft:leather_boots
recipe take @s minecraft:leather_chestplate
recipe take @s minecraft:leather_helmet
recipe take @s minecraft:leather_leggings
recipe take @s minecraft:mace
recipe take @s minecraft:netherite_axe
recipe take @s minecraft:netherite_boots
recipe take @s minecraft:netherite_chestplate
recipe take @s minecraft:netherite_helmet
recipe take @s minecraft:netherite_hoe
recipe take @s minecraft:netherite_leggings
recipe take @s minecraft:netherite_pickaxe
recipe take @s minecraft:netherite_shovel
recipe take @s minecraft:netherite_sword
recipe take @s minecraft:stone_axe
recipe take @s minecraft:stone_hoe
recipe take @s minecraft:stone_pickaxe
recipe take @s minecraft:stone_shovel
recipe take @s minecraft:stone_sword
recipe take @s minecraft:wooden_axe
recipe take @s minecraft:wooden_hoe
recipe take @s minecraft:wooden_pickaxe
recipe take @s minecraft:wooden_shovel
recipe take @s minecraft:wooden_sword
