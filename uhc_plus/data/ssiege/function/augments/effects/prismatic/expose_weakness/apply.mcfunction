execute if score @s ssiege_exposed matches -1 run function ssiege:augments/effects/exposed/init
scoreboard players set @s ssiege_exposed 300
effect give @s glowing 15 0 true

tellraw @s ["",{"text":"[Expose Weakness]","bold":true,"color":"aqua"},{"text":" You've been exposed and take 20% increased damage for 15 seconds!","color":"dark_red"}]