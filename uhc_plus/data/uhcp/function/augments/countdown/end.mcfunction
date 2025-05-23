# Runs once the countdown ends
# Give player snow boots if in snowy biome
execute if biome ~ ~-1 ~ #uhcp:snowy run loot replace entity @s armor.feet loot uhcp:snow_boots

# Initialize augment
function uhcp:augments/effects/init

# In Sniffer Siege game, also apply Opening Encounter effects
execute if score %encounter ssiege_current_encounter matches 0 run return fail
execute if score %encounter ssiege_current_encounter matches 1 run return fail
execute if score %encounter ssiege_current_encounter matches 2 run function ssiege:start/encounters/effects/2
execute if score %encounter ssiege_current_encounter matches 3 run return fail
execute if score %encounter ssiege_current_encounter matches 4 run function ssiege:start/encounters/effects/4
execute if score %encounter ssiege_current_encounter matches 5 run return fail
execute if score %encounter ssiege_current_encounter matches 6 run function ssiege:start/encounters/effects/6
execute if score %encounter ssiege_current_encounter matches 7 run return fail
execute if score %encounter ssiege_current_encounter matches 8 run function ssiege:start/encounters/effects/8
execute if score %encounter ssiege_current_encounter matches 9 run function ssiege:start/encounters/effects/9
execute if score %encounter ssiege_current_encounter matches 10 run return fail
execute if score %encounter ssiege_current_encounter matches 11 run function ssiege:start/encounters/effects/11
execute if score %encounter ssiege_current_encounter matches 12 run function ssiege:start/encounters/effects/12
execute if score %encounter ssiege_current_encounter matches 13 run return fail
execute if score %encounter ssiege_current_encounter matches 14 run function ssiege:start/encounters/effects/14
execute if score %encounter ssiege_current_encounter matches 15 run function ssiege:start/encounters/effects/15
execute if score %encounter ssiege_current_encounter matches 16 run function ssiege:start/encounters/effects/16
execute if score %encounter ssiege_current_encounter matches 17 run function ssiege:start/encounters/effects/17
execute if score %encounter ssiege_current_encounter matches 18 run function ssiege:start/encounters/effects/18
execute if score %encounter ssiege_current_encounter matches 19 run function ssiege:start/encounters/effects/19
execute if score %encounter ssiege_current_encounter matches 20 run return fail
execute if score %encounter ssiege_current_encounter matches 21 run return fail
