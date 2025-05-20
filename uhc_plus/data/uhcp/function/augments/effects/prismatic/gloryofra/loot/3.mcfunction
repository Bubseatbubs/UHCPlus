function uhcp:augments/effects/prismatic/gloryofra/loot/head
function uhcp:augments/effects/prismatic/gloryofra/loot/chest
function uhcp:augments/effects/prismatic/gloryofra/loot/legs
function uhcp:augments/effects/prismatic/gloryofra/loot/feet
give @s minecraft:netherite_sword[minecraft:enchantments={"minecraft:sharpness":5}] 1
give @s minecraft:potion[minecraft:potion_contents={"potion":"minecraft:strong_regeneration"}] 1
tellraw @s [{"text":"Ra blesses you with his armory!","color":"gold"},{"text":" You've received ","color":"gray"},{"text":"Fully Enchanted Netherite Armor, a Netherite Sword","color":"light_purple","bold":true},{"text":" and ","color":"gray"},{"text":"Regeneration II Potion","color":"light_purple","bold":true},{"text":".","color":"gray"}]
