# High end of range
execute if score %arrow_limit uhcp_arrowCount matches 2368.. run return run function uhcp:settings/player/arrow_limit/above
scoreboard players set %arrow_limit uhcp_arrowCount 0
scoreboard players set @s uhcp_settings 400
function uhcp:settings/player/arrow_limit/end
