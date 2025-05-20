effect give @s minecraft:speed infinite 0 false
give @s minecraft:bow[minecraft:enchantments={"minecraft:power":5,"minecraft:punch":2}] 1
give @s minecraft:potion[minecraft:potion_contents={"potion":"minecraft:strong_regeneration"}] 2
tellraw @s [{"text":"Ra blesses you with his marksmanship! ","color":"gold"},{"text":"You've received a ","color":"gray"},{"text":"Power V Punch II Bow","color":"light_purple","bold":true},{"text":", ","color":"gray"},{"text":"permanent Speed","color":"light_purple","bold":true},{"text":", and an ","color":"gray"},{"text":"Enchanted Golden Apple","color":"light_purple"},{"text":".","color":"gray"}]
