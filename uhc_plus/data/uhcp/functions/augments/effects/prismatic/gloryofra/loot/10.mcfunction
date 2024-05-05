function uhcp:entity/items/loot/summon
loot replace entity @e[type=minecraft:item,tag=UHCP_NewLoot,sort=nearest,limit=1] contents loot uhcp:augments/ra/10
function uhcp:entity/items/loot/finish

effect give @s strength infinite 0 false
effect give @s speed infinite 0 false
effect give @s resistance infinite 0 false
give @s minecraft:potion[minecraft:potion_contents={"potion":"minecraft:strong_regeneration"}] 2
tellraw @s [{"text":"Ra blesses you with his perfect sight! ","color":"gold"},{"text":"You've gained ","color":"gray"},{"text":"30 All-Seeing Eyes","color":"light_purple","bold":true},{"text":", gained ","color":"gray"},{"text":"permanent Strengh, Speed, and Resistance","color":"light_purple","bold":true},{"text":", and ","color":"gray"},{"text":"2 Regeneration II Potions","color":"light_purple"},{"text":".","color":"gray"}]
