scoreboard players set @s exalted 0
execute if score @s exalted_item_1 matches -2 run return run tellraw @s ["",{"text":"[Exalted Adventure]","color":"aqua"},{"text":" You've already completed your adventure!","color":"dark_red"}]
execute if score @s exalted_item_1 matches -1 run return run function ssiege:augments/effects/prismatic/exalted_adventure/announce/completed_one_item
execute if score @s exalted_item_2 matches -1 run return run function ssiege:augments/effects/prismatic/exalted_adventure/announce/completed_one_item
execute if score @s exalted_item_3 matches -1 run return run function ssiege:augments/effects/prismatic/exalted_adventure/announce/completed_one_item

tellraw @s ["",{"text":"[Exalted Adventure]","color":"aqua"},{"text":" Collect a stack of two of these items to receive your reward:","color":"white"}]
function ssiege:augments/effects/prismatic/exalted_adventure/announce/1
function ssiege:augments/effects/prismatic/exalted_adventure/announce/2
function ssiege:augments/effects/prismatic/exalted_adventure/announce/3
tellraw @s [{"text":"(type ","color":"gray"},{"text":"/trigger exalted","color":"yellow"},{"text":" to see this list again at any time)","color":"gray"}]