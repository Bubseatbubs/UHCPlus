# Set difficulty
execute if score %difficulty uhcp_settings matches 1 run return run function uhcp:settings/reset/difficulty/normal
execute if score %difficulty uhcp_settings matches 2 run return run function uhcp:settings/reset/difficulty/hard
execute if score %difficulty uhcp_settings matches 3 run return run function uhcp:settings/reset/difficulty/peaceful
function uhcp:settings/reset/difficulty/easy
