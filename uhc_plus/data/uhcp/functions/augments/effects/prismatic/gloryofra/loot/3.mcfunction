item replace entity @s armor.head with minecraft:netherite_helmet[minecraft:enchantments={levels:{"minecraft:protection":4}}] 1
item replace entity @s armor.chest with minecraft:netherite_chestplate[minecraft:enchantments={levels:{"minecraft:protection":4}}] 1
item replace entity @s armor.legs with minecraft:netherite_leggings[minecraft:enchantments={levels:{"minecraft:protection":4}}] 1
item replace entity @s armor.feet with minecraft:netherite_boots[minecraft:enchantments={levels:{"minecraft:protection":4}}] 1
give @s minecraft:netherite_sword[minecraft:enchantments={levels:{"minecraft:sharpness":5}}] 1
give @s minecraft:potion[minecraft:potion_contents={"potion":"minecraft:strong_regeneration"}] 1
tellraw @s [{"text":"Ra blesses you with his armory!","color":"gold"},{"text":" You've received ","color":"gray"},{"text":"Fully Enchanted Netherite Armor, a Netherite Sword","color":"light_purple","bold":true},{"text":" and ","color":"gray"},{"text":"Regeneration II Potion","color":"light_purple","bold":true},{"text":".","color":"gray"}]
