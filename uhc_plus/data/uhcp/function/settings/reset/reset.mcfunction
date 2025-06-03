# Display page
function uhcp:settings/pages/main
tellraw @s "Settings were reset to their default values."
title @a actionbar [{"text":"Settings were reset","color":"dark_red"}]

# Reset settings according to current game mode
execute if score %mode uhcp_settings matches 0 run return run function uhcp:settings/reset/uhcp
execute if score %mode uhcp_settings matches 1 run function uhcp:settings/reset/ssiege
