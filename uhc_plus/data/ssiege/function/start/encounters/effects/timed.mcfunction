# Time based encounters
execute if score %encounter ssiege_current_encounter matches 9 run return run effect give @a glowing infinite 0
execute if score %encounter ssiege_current_encounter matches 5 run return run function ssiege:start/encounters/effects/barney_give
execute if score %encounter ssiege_current_encounter matches 7 run return run function ssiege:start/encounters/effects/humbug_give