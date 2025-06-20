tellraw @s ["",{"text":"[Exalted Adventure]","color":"aqua"},{"text":" Collect a stack of one of these items to receive your reward:","color":"white"}]
execute if score @s exalted_item_1 matches 0..17 run function ssiege:augments/effects/prismatic/exalted_adventure/announce/exalted_item_1
execute if score @s exalted_item_2 matches 0..17 run function ssiege:augments/effects/prismatic/exalted_adventure/announce/exalted_item_2
execute if score @s exalted_item_3 matches 0..17 run function ssiege:augments/effects/prismatic/exalted_adventure/announce/exalted_item_3