execute if score @s exalted_item_1 matches -2 run return fail
execute store result score %1 uhcp_initStatus run function ssiege:augments/effects/prismatic/exalted_adventure/check_items/1/check
execute store result score %2 uhcp_initStatus run function ssiege:augments/effects/prismatic/exalted_adventure/check_items/2/check
execute store result score %3 uhcp_initStatus run function ssiege:augments/effects/prismatic/exalted_adventure/check_items/3/check
scoreboard players operation %1 uhcp_initStatus += %2 uhcp_initStatus
scoreboard players operation %1 uhcp_initStatus += %3 uhcp_initStatus

execute if score %1 uhcp_initStatus matches ..1 run return fail

function ssiege:augments/effects/prismatic/exalted_adventure/rewards/init