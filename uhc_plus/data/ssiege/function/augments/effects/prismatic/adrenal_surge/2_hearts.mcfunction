execute at @s if entity @e[tag=SSIEGE_HealingAura,distance=..10] run return fail
effect give @s strength 5 0 false
execute at @s run playsound block.brewing_stand.brew master @a[distance=..16] ~ ~ ~ 1 1 0.5
tellraw @s ["",{"text":"[Adrenal Surge]","bold":true,"color":"gold"},{"text":" The adrenaline rush","color":"white"},{"text":" gave you","color":"white"},{"text":" 5 seconds of Strength","color":"yellow"},{"text":"!","color":"white"}]