function uhcp:entity/items/loot/summon
loot replace entity @e[type=minecraft:item,tag=UHCP_NewLoot,sort=nearest,limit=1] contents loot uhcp:radiant_relics
function uhcp:entity/items/loot/finish

function uhcp:entity/items/loot/summon
loot replace entity @e[type=minecraft:item,tag=UHCP_NewLoot,sort=nearest,limit=1] contents loot uhcp:radiant_relics
function uhcp:entity/items/loot/finish

give @s minecraft:enchanted_golden_apple 1
tellraw @s [{"text":"Ra's blesses you with his Relics!","color":"gold"},{"text":" You've received ","color":"gray"},{"text":"2 Radiant Relics","color":"light_purple","bold":true},{"text":" and an ","color":"gray"},{"text":"Enchanted Golden Apple","color":"light_purple","bold":true},{"text":".","color":"gray"}]