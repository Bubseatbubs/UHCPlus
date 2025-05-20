# Low end of range
execute if score %arrow_limit uhcp_arrowCount matches ..0 run return run function uhcp:settings/player/arrow_limit/below
scoreboard players set %arrow_limit uhcp_arrowCount 2368
function uhcp:settings/player/arrow_limit/end
