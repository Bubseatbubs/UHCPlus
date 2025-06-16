execute store result score %random uhcp_aug_count run random value 0..9
execute if score %random uhcp_aug_count matches ..5 run return fail

give @s minecraft:golden_apple
tellraw @s ["",{"text":"[Harvest Season II]","bold":true,"color":"gold"},{"text":" You harvested a ", "color":"white", "bold": false},{"text":"Golden Apple","bold":true,"color":"gold"},{"text":"!"}]