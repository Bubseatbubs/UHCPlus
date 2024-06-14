function uhcp:entity/items/loot/summon
loot replace entity @n[type=minecraft:item,tag=UHCP_NewLoot] contents loot uhcp:relics/soulflames_embrace
function uhcp:entity/items/loot/finish

function uhcp:entity/items/loot/summon
loot replace entity @n[type=minecraft:item,tag=UHCP_NewLoot] contents loot uhcp:relics/windfall
function uhcp:entity/items/loot/finish

give @s minecraft:golden_apple 30
tellraw @s [{"text":"Ra blesses you with his orchards!","color":"gold"},{"text":" You've received ","color":"gray"},{"text":"Soulflame's Embrace","color":"light_purple","bold":true},{"text":", ","color":"gray"},{"text":"Windfall","color":"light_purple","bold":true},{"text":", and ","color":"gray"},{"text":"30 Golden Apples","color":"light_purple","bold":true},{"text":".","color":"gray"}]