execute store result score @s exalted_item_3 run random value 0..17
execute if score @s exalted_item_1 = @s exalted_item_3 run return run function ssiege:augments/effects/prismatic/exalted_adventure/pick_item_3
execute if score @s exalted_item_2 = @s exalted_item_3 run return run function ssiege:augments/effects/prismatic/exalted_adventure/pick_item_3