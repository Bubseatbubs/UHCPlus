# First half of encounters
execute if score %encounter ssiege_current_encounter matches 0 run return fail
execute if score %encounter ssiege_current_encounter matches 1 run return fail
execute if score %encounter ssiege_current_encounter matches 2 run function ssiege:start/encounters/effects/2
execute if score %encounter ssiege_current_encounter matches 3 run return fail
execute if score %encounter ssiege_current_encounter matches 4 run function ssiege:start/encounters/effects/4
execute if score %encounter ssiege_current_encounter matches 5 run function ssiege:start/encounters/effects/5
execute if score %encounter ssiege_current_encounter matches 6 run function ssiege:start/encounters/effects/6
execute if score %encounter ssiege_current_encounter matches 7 run function ssiege:start/encounters/effects/7
execute if score %encounter ssiege_current_encounter matches 8 run function ssiege:start/encounters/effects/8
execute if score %encounter ssiege_current_encounter matches 9 run function ssiege:start/encounters/effects/9
execute if score %encounter ssiege_current_encounter matches 10 run function ssiege:start/encounters/effects/10
