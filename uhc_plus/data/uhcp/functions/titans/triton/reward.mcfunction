advancement revoke @s only uhcp:titans/killed_triton

tellraw @a [{"text":"Triton","color":"gold"},{"text":" has been vanquished by ","color":"white"},{"selector":"@s","color":"gold"},{"text":"!","color":"white"}]
tellraw @a [{"text":"Triton's defeat summoned a thunderstorm for 10 minutes...","color":"blue","bold":true}]

function uhcp:titans/reward
execute in minecraft:overworld run weather thunder 12000t
effect give @s dolphins_grace infinite 4 false
give @s trident[enchantments={levels:{"minecraft:channeling":1,"minecraft:loyalty":3,"minecraft:unbreaking":3}}] 1
give @s trident[enchantments={levels:{"minecraft:channeling":1,"minecraft:riptide":3,"minecraft:unbreaking":3}}] 1
tellraw @s [{"text":"You've slain"},{"text":" Triton","color":"gold"},{"text":"! You gained","color":"white"},{"text":" infinite Dolphin's Grace","color":"gold"},{"text":" and ","color":"white"},{"text":" a few Tridents","color":"gold"},{"text":"!","color":"white"}]